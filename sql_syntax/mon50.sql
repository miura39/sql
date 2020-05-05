/*これまでに最もよく売れた商品を１０位まで抽出する。商品コードと販売した数量を
数量の多い順に抽出すること。数量が同じ消費については、商品コードを昇順にすること。*/
SELECT    product_code,SUM(quantity) AS "量の多い順番"
FROM      lf_order
GROUP BY  product_code
HAVING    SUM(quantity) > 0
ORDER BY  SUM(quantity) DESC, product_code ASC
LIMIT     10