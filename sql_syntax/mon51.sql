/*これまでに売れた数量が５個未満の商品コードとその数量を抽出する。*/
SELECT    product_code,SUM(quantity) AS "5個未満"
FROM      lf_order
GROUP BY  product_code
HAVING    SUM(quantity) < 5
ORDER BY  SUM(quantity) DESC, product_code ASC
