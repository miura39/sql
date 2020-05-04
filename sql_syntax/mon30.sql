/*廃盤商品テーブルから、２０１６年１２月に廃盤されたものと、売り上げ個数が１００を超える
ものを併せて抽出する。一覧は、売り上げ個数の多い順に並べること。*/
SELECT    *
FROM      db_products
WHERE     seles_quantity >=100
OR        discountinued_product_date BETWEEN '2016-12-01' AND '2016-12-31'
ORDER BY  seles_quantity DESC
