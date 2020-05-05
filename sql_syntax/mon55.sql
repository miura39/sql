/*次の商品について、商品コード、商品名、単価、これまでに販売した数量を抽出する。
ただし、抽出には選択列リストにて注文テーブルを副問合せするSELECT文を利用。
・商品コード：S0604*/
SELECT  product_code,
        product_name,
        unit_price,
        (SELECT SUM(quantity)
          FROM lf_order
          WHERE product_code = "S0604"
        ) AS "合計"   
FROM products
WHERE product_code = "S0604"

