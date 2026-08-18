---
name: check-in-executivo-colli-co
description: Construir, atualizar, revisar e publicar check-ins quinzenais ou mensais de projetos no padrão executivo Colli&Co/Centro do Silicone, em deck HTML 1600x900. Use quando o usuário pedir check-in, fechamento, apresentação de resultados, consolidado de mídia e comercial, objetivos e KRs, entregas, plano de ação ou publicação na Vercel, especialmente quando for necessário cruzar Growth Pack, plataformas de anúncios, CRM/FLOW/Kommo, Ekyte/TAR, conversas recentes de WhatsApp, transcrições, Sprint Review, alinhamentos, breakeven, criativos e arquivos do cliente. Antes de executar, confirmar obrigatoriamente se o check-in é quinzenal ou mensal.
---

# Check-in executivo Colli&Co

Construir o deck com evidências verificáveis e com o sistema visual canônico definido em `references/visual-system.md`. Nunca transportar dados, diagnósticos, pessoas ou imagens de um cliente para outro.

## Início obrigatório

1. Perguntar obrigatoriamente, antes de consultar fontes, analisar dados ou editar arquivos: **“Este check-in será quinzenal ou mensal?”**
2. Aguardar a resposta. Não inferir nem avançar silenciosamente, mesmo quando o período parecer evidente.
3. Após a confirmação, identificar cliente, datas exatas e pasta do projeto. Para quinzenal, confirmar qual quinzena; para mensal, confirmar mês e ano quando não estiverem explícitos.
4. Localizar logo, criativos, documentos e decks anteriores no diretório do cliente.
5. Ler integralmente:
   - `references/data-sources.md` para coleta e reconciliação;
   - `references/deck-blueprint.md` para selecionar os slides;
   - `references/visual-system.md` antes de editar HTML;
   - `references/quality-gate.md` antes de concluir ou publicar.
6. Preservar a versão existente antes de alterações substanciais.
7. Criar o deck dentro da pasta do cliente. Não misturar artefatos entre projetos.

## Coleta e análise

- Consultar todas as integrações disponíveis e pertinentes, não apenas a primeira fonte encontrada.
- Pesquisar por cliente, workspace/projeto, período e variações do nome.
- Cruzar Growth Pack, Meta Ads, Google Ads, LinkedIn Ads, CRM/FLOW/Kommo, Ekyte/TAR, Nekt, breakeven, Drive e arquivos locais quando disponíveis.
- Consultar obrigatoriamente o contexto recente do projeto: conversas do grupo de WhatsApp, alinhamentos, Sprint Review, Sprint Planning, check-ins, acompanhamentos comerciais, reuniões com o cliente, transcrições e decisões registradas.
- Buscar contexto do período do check-in e também eventos posteriores relevantes até a data de montagem. Separar no deck “resultado do período” de “atualização recente” para não misturar janelas.
- Extrair dos contextos: decisões, testes realizados, objeções, bloqueios, pendências, compromissos do cliente/time, mudanças de estratégia, feedback sobre leads, aprovações e próximos passos.
- Usar conversas e reuniões para explicar o contexto dos números, nunca para substituir métricas confirmadas.
- Quando WhatsApp ou reunião não estiver acessível, procurar exportações, transcrições, atas e menções em sprints; se ainda faltar, aplicar o Protocolo de lacunas.
- Consultar tarefas completas, etapas e apontamentos. Para execução por player, considerar todos que participaram, não somente o executor final.
- Separar sempre: confirmado pela fonte, cálculo derivado, informação fornecida pelo time, hipótese e dado indisponível.
- Reconciliar totais, datas, moedas, leads e estágios do funil. Não somar métricas incompatíveis.
- Tratar nomes de estágio conforme a regra do projeto. Não presumir MQL, SQL ou venda sem definição/evidência.
- Para criativos, buscar arquivo em qualidade original e ligar imagem, campanha/anúncio, investimento e métrica de resultado.

## Protocolo de lacunas

Nunca inventar, preencher com zero ou ocultar silenciosamente uma lacuna.

Quando uma fonte ou métrica necessária não estiver disponível:

1. Tentar fontes alternativas autorizadas e registrar o que foi consultado.
2. Informar ao usuário de forma objetiva:
   - o que não foi encontrado;
   - onde foi procurado;
   - qual slide ou conclusão é afetado;
   - qual dado/arquivo/acesso é necessário.
3. Perguntar somente pelo item que realmente bloqueia a entrega.
4. Continuar com as partes confirmadas quando a lacuna não for bloqueante.
5. Omitir o módulo sem evidência ou marcá-lo como “aguardando validação” apenas se o usuário quiser vê-lo no deck.

Modelo de aviso:

> Não localizei as vendas de julho no CRM nem no Growth Pack. Isso impede fechar o funil realizado e calcular CAC. Preciso do relatório de vendas de 01/07 a 31/07 ou da confirmação do pipeline correto. Os demais slides podem avançar.

## Construção

- Consolidar a análise antes de desenhar.
- Selecionar slides por relevância usando `references/deck-blueprint.md`; não criar volume sem decisão associada.
- Usar a capa padrão em `assets/capa-padrao.png` quando ela for o asset vigente. Alterar somente logo, cliente, período e informações autorizadas.
- Preservar fundo, enquadramento, navegação, setas, tipografia, margens, contraste e proporção 1600x900.
- Manter as cinco seções exatamente: Resultados; Objetivos; Premissas e riscos; Entregas; Próximos passos.
- Usar linguagem executiva, factual e equilibrada. Contextualizar decisões propositais para não transformar otimização em aparente piora.
- Não expor jargões, sistemas internos, nomes de score ou fontes internas no conteúdo visível, salvo quando isso for relevante ao cliente ou solicitado.
- Formular problemas sem autopunição: evidência, contexto, impacto e ação.
- Concentrar ações futuras na seção Próximos passos. Não espalhar plano de ação em Resultados.
- Manter logo V4 Colli&Co nos slides conforme o padrão, removendo-o apenas quando causar conflito visual e houver precedente autorizado.
- Encerrar com Obrigado, QR Code funcional e link direto de NPS/CSAT quando fornecido.

## Verificação

1. Abrir localmente por servidor HTTP, nunca validar apenas pelo arquivo.
2. Conferir cada slide em 1600x900 e também em viewport reduzida.
3. Verificar overflow, textos invisíveis, tabelas vazias, imagens cortadas, baixa resolução, logos deslocados e setas sobre conteúdo.
4. Validar navegação por clique e teclado, contagem de slides, QR Code e links.
5. Executar `scripts/validate-deck.ps1 -Path <index.html>`.
6. Comparar visualmente capa, agenda, divisórias e encerramento com o padrão canônico.
7. Publicar somente após pedido explícito do usuário. No deploy, usar o projeto Vercel já vinculado quando existir e validar a URL pública.

## Entrega

Informar de forma concisa:

- caminho ou URL do deck;
- período coberto;
- fontes efetivamente consultadas;
- lacunas ainda abertas;
- verificações realizadas;
- status do deploy, se solicitado.

## Guardrails

- Não inventar métricas, metas, faturamento, CPL, CAC, MQL, SQL ou vendas.
- Não usar zero para representar dado ausente.
- Não apresentar projeção como realizado.
- Não atribuir causalidade sem evidência.
- Não expor dados pessoais de leads sem necessidade e autorização.
- Não reproduzir conversas privadas ou mensagens literais no deck sem necessidade; sintetizar decisões e preservar contexto.
- Não publicar ou sobrescrever produção sem solicitação explícita.
- Não reutilizar logo, criativos ou conteúdo de outro cliente.
- Não deixar referências internas de fonte nos slides quando o cliente não precisa vê-las; manter rastreabilidade na análise de trabalho.
