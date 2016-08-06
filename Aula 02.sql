--Fazer a media de preço de venda dos produtos iniciados com 'Chair'
SELECT
	products.name, AVG(items.cost) AS media
FROM
	products
	INNER JOIN items ON products.id = items.product_id
WHERE
	LOWER(products.name) LIKE 'chair%'
GROUP BY
	products.id, products.name
ORDER BY
	products.name



SELECT
	products.name, items.cost
FROM
	products
	INNER JOIN items ON products.id = items.product_id
WHERE
	LOWER(products.name) LIKE 'chair%'
ORDER BY
	products.name, items.cost

--total de vendas
SELECT SUM(total) FROM invoices;

--Soma total da compra de cada Cliente ordenando da maior compra para a menor
SELECT
	customers.first_name, SUM(invoices.total) AS total_compra
FROM
	customers
	INNER JOIN invoices ON customers.id = invoices.customer_id
GROUP BY
	customers.id, customers.first_name
ORDER BY total_compra DESC

--SUM, AVG, MIN, MAX, CHAR_LENGTH, LOWER, UPPER, 
--quantos caracteres tem o menor nome dos meus clientes
SELECT MIN(CHAR_LENGTH(first_name)) FROM customers
--quantos caracteres tem o maior sobrenome dos meus clientes
SELECT MAX(CHAR_LENGTH(last_name)) FROM customers
--nome completo em maiusculo
SELECT UPPER(first_name || ' ' || last_name) as nome_completo FROM customers











