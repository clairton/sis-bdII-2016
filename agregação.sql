--Contando itens
SELECT 
	count(*) 
FROM 
	products;

--Contando items que nao tem vendas
SELECT 
	count(*) 
FROM 
	products
WHERE
	products.id NOT IN(
		SELECT DISTINCT(product_id) FROM items
	);

--Exemplo de junção no where
SELECT
	products.id, products.name
FROM
	products, items
WHERE
	products.id = items.product_id
ORDER BY
	products.id
--exemplo de junção com join
SELECT
	products.id, products.name
FROM
	products
	INNER JOIN items ON products.id = items.product_id
ORDER BY
	products.id


--Selecionar Quantos Nome do Cliente e quantas compras ele efetuou
SELECT
	first_name, last_name, count(invoices.customer_id) as count
FROM
	customers
	INNER JOIN invoices ON invoices.customer_id = customers.id
GROUP BY
	invoices.customer_id, customers.first_name, last_name
ORDER BY  customers.first_name
--Selecionar quantos pedidos foram feitos por rua
SELECT
	customers.street, count(invoices.customer_id) as count
FROM
	customers
	INNER JOIN invoices ON invoices.customer_id = customers.id
GROUP BY
	invoices.customer_id, customers.street
ORDER BY  customers.street

--Media do valor dos produtos
SELECT AVG(price) FROM products;
	
--Fazer a media de preço de venda dos produtos iniciados com 'Chair'





































--Contanto com Where

--Junção com products;
	
--Agrupando
