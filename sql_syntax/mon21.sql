/*商品テーブルから、「衣類」で単価が三千円以下、または「雑貨」で
単位が1万円以上の商品データを抽出する。*/
SELECT  *
FROM    products
WHERE   (categories = 1 AND unit_price <= 3000)
OR      (categories = 3 AND unit_price >= 10000)