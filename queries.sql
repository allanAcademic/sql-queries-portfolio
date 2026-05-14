-- ============================================
-- ANÁLISES DE NEGÓCIO
-- ============================================
-- "Quais vendas da categoria 'Eletrônicos' tiveram valor acima de R$ 500?"
SELECT * FROM vendas WHERE categoria = 'Eletrônicos' AND valor > 500;

-- "Qual é o faturamento total e quantas vendas foram feitas por categoria?"
SELECT categoria, 
SUM(VALOR) AS faturamento_total, 
COUNT(quantidade) AS quantidade_vendas_da_categoria 
FROM vendas
GROUP BY  categoria;

-- "Quais categorias tiveram mais de 2 vendas no total?"
SELECT categoria, COUNT(*) AS total_vendas FROM vendas GROUP BY categoria HAVING COUNT(*) > 2;

-- "Liste todas as vendas mostrando o nome do cliente que comprou."
SELECT v.id AS id_venda, v.cliente_id, v.produto, v.categoria, v.quantidade, v.data_venda, 
c.nome, c.cidade 
FROM vendas v
INNER JOIN clientes c
ON v.cliente_id = c.id;

--"Mostre todos os clientes (mesmo os que não compraram nada) e quantas compras cada um fez."
SELECT c.id, c.nome, COUNT(v.cliente_id) as compras
from clientes c
LEFT JOIN vendas v
ON c.id = v.cliente_id
GROUP BY c.id, c.nome;

-- "Quais clientes de São Paulo ou Belo Horizonte compraram produtos da categoria 'Eletrônicos'?"
SELECT c.nome, c.cidade, v.categoria
FROM clientes c
INNER JOIN vendas v ON c.id = v.cliente_id
WHERE v.categoria = 'Eletrônicos' 
AND c.cidade IN (SELECT cidade FROM clientes WHERE cidade = 'São Paulo' OR cidade = 'Belo Horizonte');

-- "Quais são os 5 produtos mais vendidos (considerando valor total = quantidade × preço)?"
SELECT produto, SUM(quantidade * valor) AS faturamento_total
FROM vendas
GROUP BY produto
ORDER BY faturamento_total DESC
LIMIT 5;

-- "Quais vendas tiveram valor acima da média geral de todas as vendas?"
SELECT * FROM vendas WHERE valor > (SELECT AVG(valor) FROM vendas);

-- "Qual foi o faturamento total por mês?"
SELECT DATE_FORMAT(data_venda, '%Y-%m') AS mes,
SUM(valor) AS faturamento_mensal
FROM vendas
GROUP BY mes
ORDER BY mes;
