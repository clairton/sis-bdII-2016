--Contando itens
SELECT COUNT(*) FROM items;

--Contanto com Where
SELECT COUNT(*) FROM items WHERE product_id = 0;

--Junção com products;
SELECT COUNT(*) FROM items
INNER JOIN products ON products.id = items.product_id
WHERE name='Iron Iron';
	
--Agrupando
SELECT 
	products.id, name, COUNT(products.id)
FROM items
INNER JOIN products ON products.id = items.product_id
WHERE name LIKE '%Ir%'
GROUP BY products.id
ORDER BY name
	
SELECT
	products.id, products.name, SUM(items.quantity) AS total "
FROM items
INNER JOIN products ON items.product_id = products.id
WHERE products.name = 'Ice Tea Iron'
GROUP BY products.id
	
	
--Fazer a media de preço de venda dos produtos iniciados com 'Chair'
SELECT products.id, products.name, AVG(items.cost) AS nao_quero_sabe
FROM items
INNER JOIN products ON products.id = items.product_id
WHERE products.name LIKE 'chair%'
GROUP BY products.id;
