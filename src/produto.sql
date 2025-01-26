SELECT tb_order_items.product_id, count(tb_order_items.product_id) AS contagem FROM tb_order_items
LEFT JOIN tb_orders ON tb_order_items.order_id = tb_orders.order_id
WHERE order_purchase_timestamp BETWEEN '2017-01-01' AND DATE('2017-01-01', '+1 months')
GROUP BY tb_order_items.product_id
ORDER BY contagem DESC;

