# sql-queries-portfolio
Portfólio de consultas SQL para análise de dados de vendas com SQLite. Projeto de estudo com foco em raciocínio analítico orientado a perguntas de negócio.

# SQL Queries Portfolio - Análise de Vendas

## Sobre o projeto
Banco de dados relacional fictício de um sistema de vendas, com controle de clientes e transações. O schema e os dados foram planejados com auxílio de IA, mas todas as queries foram escritas e revisadas manualmente — o foco é demonstrar raciocínio analítico, não apenas sintaxe.

## Tecnologias
- SQLite
- SQL (DDL, DML e consultas analíticas)

## Estrutura do banco
2 tabelas relacionadas via chave estrangeira:
- clientes
- vendas (cliente_id → clientes.id, com ON DELETE CASCADE)

## Como executar
1. Acesse [SQLite Online](https://sqliteonline.com)
2. Execute `schema.sql` para criar as tabelas e inserir os dados
3. Execute `queries.sql` para rodar as análises de negócio

## Consultas implementadas
- Filtrar vendas por categoria e valor mínimo (WHERE + AND)
- Faturamento total e contagem de vendas por categoria (GROUP BY + SUM + COUNT)
- Categorias com mais de 2 vendas (GROUP BY + HAVING)
- Vendas com nome do cliente (INNER JOIN)
- Clientes com total de compras, incluindo quem nunca comprou (LEFT JOIN + COUNT)
- Clientes de cidades específicas por categoria (JOIN + IN + subquery)
- Top 5 produtos por valor total de vendas (SUM + ORDER BY + LIMIT)
- Vendas acima da média geral (subquery com AVG)
- Faturamento mensal (DATE_FORMAT + GROUP BY)

## O que aprendi
- Modelagem de banco com integridade referencial (FOREIGN KEY + CASCADE)
- Diferença entre WHERE e HAVING no contexto de agrupamento
- Uso de subqueries para comparação com agregações
- Escrita de queries orientadas a perguntas de negócio, não só à sintaxe

## Status
Em progresso

## Autor
Allan Chrystal - GitHub: @allanAcademic
