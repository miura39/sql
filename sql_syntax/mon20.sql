/*商品テーブルから、商品名に「軽い」または「ゆるふわ」のどちらか
が含まれる商品データを抽出する。*/
SELECT    *
FROM      products
WHERE     product_name
LIKE      "%軽い%"
OR        product_name
LIKE      "%ゆるふわ%";
