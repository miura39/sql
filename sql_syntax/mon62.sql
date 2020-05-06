/*次の廃盤商品について、廃盤日より後に注文された注文情報（注文日、注文番号、注文枝番
注文番号、数量、注文金額）を抽出する。注文金額は単価と数量より算出すること。*/
SELECT  order_date,
        order_no,
        order_branch_no,
        quantity,
        unit_price,
        db_products.product_code,
        unit_price * quantity
FROM  lf_order
JOIN  db_products
ON    lf_order.product_code = db_products.product_code
WHERE db_products.product_code = 'A0009'