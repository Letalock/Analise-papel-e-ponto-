# Análise de Clientes em Risco de Churn - Papel e Ponto

## Contexto

A empresa fictícia Papel e Ponto identificou um problema de recorrência de clientes: parte da base realiza compras, mas não retorna após alguns meses.

Neste projeto, foi feita uma análise em SQL com foco em identificar clientes em risco de churn, considerando como referência a última venda registrada na base.

## Definição de churn

Cliente em risco de churn = cliente que já realizou pelo menos uma compra e está há 4 meses ou mais sem comprar.

A análise utilizou como data de referência a última data de venda disponível na tabela de vendas.

## Objetivo

Responder perguntas de negócio relacionadas ao risco de churn e transformar os resultados em insights acionáveis para ações de CRM.

## Base de dados

### Tabela de clientes
Contém informações cadastrais dos clientes, como:
- id do cliente
- nome
- cidade
- estado
- renda mensal
- idade
- data de cadastro
- e-mail

### Tabela de vendas
Contém informações transacionais, como:
- id do cliente
- data da venda
- filial
- categoria e subcategoria de produto
- quantidade
- valor unitário
- valor total
- forma de pagamento
- canal de venda
- flag de campanha
- status da venda

## Perguntas de negócio

1. Qual é a data de referência da análise?
2. Quantos clientes estão em risco de churn?
3. Qual é o percentual de clientes em risco em relação ao total de clientes compradores?
4. Quais clientes estão classificados como risco e sem risco?
5. Quais clientes apresentam maior tempo sem comprar?

## Lógica da análise

A análise foi construída em etapas:

1. Identificação da última data de venda da base.
2. Transformação dessa data em mês numérico.
3. Identificação da última compra de cada cliente.
4. Cálculo da diferença em meses entre a referência e a última compra.
5. Classificação dos clientes em:
   - risco
   - sem risco

A lógica de mês numérico utilizada foi:

`ano * 12 + mês`

Essa abordagem permite comparar meses de forma simples, sem depender de funções mais avançadas de data.

## Principais resultados

> Preencher com os resultados encontrados após rodar as queries.

Exemplo:
- X clientes foram classificados em risco de churn.
- Isso representa Y% da base de clientes compradores.
- Os clientes em risco apresentam 4 meses ou mais sem compras.
- A base já permite segmentação inicial para ações de retenção.

## Recomendações para CRM

- Criar campanhas de reativação para clientes com 4 meses ou mais sem compras.
- Priorizar clientes com maior valor histórico de compra.
- Testar comunicações diferentes por canal de venda e perfil de cliente.

## Aprendizados do projeto

Este projeto permitiu praticar:
- SELECT
- DISTINCT
- CASE WHEN
- MAX
- COUNT
- GROUP BY
- VIEW
- tratamento de datas em formato texto
- raciocínio analítico aplicado a churn

## Estrutura do projeto

- `01_data_referencia.sql`
- `02_mes_referencia.sql`
- `03_ultima_compra_cliente.sql`
- `04_classificacao_risco.sql`
- `05_total_clientes_risco.sql`
- `06_percentual_clientes_risco.sql`

## Conclusão

A análise mostrou como transformar uma regra de negócio simples em uma lógica SQL estruturada, com foco em identificar clientes em risco de churn e apoiar decisões de retenção.
