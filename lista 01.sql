-- Exercício 1: Listar todos os pedidos com detalhes do cliente
 
SELECT
    o.order_id,
    o.order_date,
    c.full_name,
    c.email
FROM
    Orders o
JOIN
    Customers c ON o.customer_id = c.customer_id;


-- Exercício 2: Encontrar todos os produtos pedidos por um cliente específico

 SELECT
    p.product_name,
    oi.quantity_ordered
FROM
    Order_Items oi
JOIN
    Orders o ON oi.order_id = o.order_id
JOIN
    Products p ON oi.product_id = p.product_id
WHERE
    o.customer_id = 1;


-- Exercício 3: Calcular o total gasto por cada cliente

SELECT
    c.full_name,
    SUM(p.price * oi.quantity_ordered) AS total_gasto
FROM
    Customers c
JOIN
    Orders o ON c.customer_id = o.customer_id
JOIN
    Order_Items oi ON o.order_id = oi.order_id
JOIN
    Products p ON oi.product_id = p.product_id
GROUP BY
    c.full_name;

-- Exercício 4: Encontrar os clientes que nunca fizeram um pedido

SELECT
    c.full_name
FROM
    Customers c
LEFT JOIN
    Orders o ON c.customer_id = o.customer_id
WHERE
    o.order_id IS NULL;

-- Exercício 5: Listar os produtos mais vendidos

SELECT
    p.product_name,
    SUM(oi.quantity_ordered) AS quantidade_total_vendida
FROM
    Order_Items oi
JOIN
    Products p ON oi.product_id = p.product_id
GROUP BY
    p.product_name
ORDER BY
    quantidade_total_vendida DESC;




