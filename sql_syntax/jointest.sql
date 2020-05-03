/*joinの利用方法。テーブルの結合*/
SELECT products.unit_price ,lf_order.order_date AS lf_order,lf_order.order_no
FROM products
INNER JOIN lf_order
ON products.product_code = lf_order.product_code
