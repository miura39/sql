/*2016年８月に注文のあった商品コードの一覧を抽出する。一覧には、商品名も
表示する必要がある。すでに廃盤となっている商品に関しては特に考慮しなくて良い
（一覧に含まれなくて良い）*/
SELECT  order_no,
        order_branch_no,
        lf_order.product_code,
        product_name,
        quantity
FROM  lf_order
JOIN  products
ON    lf_order.product_code = products.product_code
WHERE order_date >= '2016-08-01'
AND   order_date <= '2016-08-31'