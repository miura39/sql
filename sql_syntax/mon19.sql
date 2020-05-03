/*商品テーブルから、「雑貨」で商品名に「水玉」が含まれる
商品データを抽出する。*/
SELECT  *
FROM    products
WHERE   product_name 
LIKE    '%水玉%' 
AND     categories = 1;
