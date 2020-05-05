/*注文テーブルから、「Z」から始まる商品コードのうち、これまでに売れた数量が
１００個以上の商品コードを抽出する。*/
SELECT  product_code
FROM    lf_order
WHERE   SUBSTRING(product_code,1,1) LIKE '%Z'
AND     quantity > 100
