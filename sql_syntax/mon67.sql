/*問題66について、さらに注文のあった「雑貨」商品がすでに廃番になっている可能性も
考慮し、一覧を抽出する。廃盤になった商品は「商品コード：（廃盤済み）」のように
表示すること。*/
SELECT  order_date,
        products.product_code,
        CONCAT(products.product_code,"：",products.product_name) AS "商品コード：商品名",
        quantity,
        products.categories,
        CONCAT(db_products.product_code,"：",db_products.product_name) AS "商品コード：廃番"
FROM  lf_order
RIGHT JOIN  products
ON    lf_order.product_code = products.product_code
LEFT JOIN  db_products
ON    products.product_code = db_products.product_code
WHERE products.categories = 3