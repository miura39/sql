/*商品区分順に、商品区分ごとの単価の最小額と最高額を求める。*/
SELECT
  categories,  
  MAX(unit_price) AS '最高額',
  MIN(unit_price) AS '最低額'
FROM products
group by categories
ORDER BY categories ASC
