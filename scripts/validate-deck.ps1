param(
    [Parameter(Mandatory = $true)]
    [string]$Path
)

$ErrorActionPreference = 'Stop'
$resolved = Resolve-Path -LiteralPath $Path
$html = Get-Content -Raw -LiteralPath $resolved
$errors = [System.Collections.Generic.List[string]]::new()
$warnings = [System.Collections.Generic.List[string]]::new()

if ($html -notmatch '1600' -or $html -notmatch '900') {
    $warnings.Add('Não foi possível confirmar o canvas 1600x900 no HTML.')
}

$sections = @('Resultados', 'Objetivos', 'Premissas e riscos', 'Entregas', 'Próximos passos')
foreach ($section in $sections) {
    if ($html -notmatch [regex]::Escape($section)) {
        $errors.Add("Seção obrigatória ausente: $section")
    }
}

if ($html -notmatch 'Obrigado') {
    $errors.Add('Slide final Obrigado não identificado.')
}

if ($html -match '(?i)lorem ipsum|\bTBD\b|\[CLIENTE\]|\[PER[IÍ]ODO\]|\{\{[^}]+\}\}') {
    $errors.Add('Há placeholder ou conteúdo provisório no deck.')
}

if ($html -match '(?i)<tr[^>]*>\s*(<td[^>]*>\s*</td>\s*)+</tr>') {
    $warnings.Add('Possível linha de tabela vazia identificada.')
}

$slideCount = ([regex]::Matches($html, 'class=["''][^"'']*\bslide\b')).Count
if ($slideCount -lt 5) {
    $warnings.Add("Somente $slideCount elementos de slide foram identificados.")
}

$result = [ordered]@{
    file = $resolved.Path
    slides_detected = $slideCount
    errors = $errors
    warnings = $warnings
    valid = ($errors.Count -eq 0)
}

$result | ConvertTo-Json -Depth 4
if ($errors.Count -gt 0) { exit 1 }
