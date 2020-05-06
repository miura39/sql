/*次の注文番号の各明細について、注文日、注文番号、注文枝番、商品コード、商品名、単価、
数量、注文金額を抽出する。注文金額は単価と数量より算出し、その総額からクーポン
割引料を差し引いたものとする。また、商品が廃盤になっている場合は、廃盤商品テーブルから必要な情報を
取得すること。
・注文番号：201704030010*/
SELECT  lf_order.order_date,
        lf_order.order_no,
        lf_order.product_code,
        CONCAT(products.product_code,"：",products.product_name) AS "商品コード：商品名",
        products.unit_price,
        lf_order.quantity,
        (products.unit_price * quantity) - (coupon_discount_fee * quantity)  AS "注文金額",
        lf_order.coupon_discount_fee,
        CONCAT(db_products.product_code,"：",db_products.product_name) AS "商品コード：廃番"
FROM  lf_order
JOIN  products
ON    lf_order.product_code = products.product_code
LEFT JOIN  db_products
ON    products.product_code = db_products.product_code
WHERE lf_order.order_no = 201704030010
ORDER BY lf_order.product_code ASC