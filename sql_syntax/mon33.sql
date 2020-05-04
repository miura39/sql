/*商品区分が「未分類」で、単価が千円以下と１万円を超える
商品について商品コード、商品名、単価を抽出する。
単価の低い順番に並べ、同額の場合は商品コードの昇順とする。*/
SELECT  product_code,product_name,unit_price
FROM    products
WHERE   categories = 9
AND     (unit_price <= 1000 OR unit_price >=10000)
ORDER BY 3 ASC, 1 ASC