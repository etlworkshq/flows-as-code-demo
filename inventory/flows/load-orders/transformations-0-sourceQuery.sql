SELECT
    o.order_number,
    o.order_date,
    o.quantity,
    c.id          AS customer_id,
    c.first_name,
    c.last_name,
    c.email,
    p.id          AS product_id,
    p.name        AS product_name,
    p.description AS product_description,
    p.weight
FROM orders o
JOIN customers c
  ON c.id = o.purchaser
JOIN products p
  ON p.id = o.product_id
WHERE o.quantity > 0
ORDER BY
    o.order_date,
    o.order_number