/*商品コード順に、商品コードごとにこれまで注文された数量の合計を求める。
量の多い順に抽出すること。数量が同じ商品については、商品コードを昇順にすること。*/
SELECT    product_code,SUM(quantity) AS "量の多い順番"
FROM      lf_order
GROUP BY  product_code
HAVING    SUM(quantity) > 0
ORDER BY  SUM(quantity) DESC, product_code ASC