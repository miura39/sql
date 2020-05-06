/*問題６４では、すでに廃盤となっている商品は抽出されなかった。廃盤となった商品も
もれなく一覧に記載されるよう、SQL文を改善する。なお、廃盤商品は商品名としては
「廃盤」の文言を表示すること。*/
SELECT  
        products.product_code AS 'products',
        lf_order.product_code AS 'lf_order',
        db_products.product_code AS '廃番'

FROM  lf_order
JOIN  db_products
ON    lf_order.product_code = db_products.product_code
LEFT JOIN  products
ON    db_products.product_code = products.product_code
WHERE order_date >= '2016-08-01'
AND   order_date <= '2016-08-31' 