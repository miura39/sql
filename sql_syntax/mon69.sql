/*商品コードが「B」で始まる商品について、商品テーブルから商品コード、商品名、単価を
注文テーブルからこれまでに売り上げた個数をそれぞれ抽出する。併せて、単価と
個数からこれまでの総売上金額を計算する（クーポン割引は考慮しなくて良い。）一覧は、
商品コードを順に表示すること。*/
SELECT  products.product_code,
        CONCAT(products.product_code,"：",products.product_name) AS "商品コード：商品名",
        products.unit_price,
        lf_order.quantity,
        (products.unit_price * quantity)  AS "売り上げ金額"
FROM  lf_order
JOIN  products
ON    lf_order.product_code = products.product_code
WHERE lf_order.product_code LIKE "B%"
ORDER BY lf_order.product_code ASC