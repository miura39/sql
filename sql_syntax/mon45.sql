/*1万円以上の商品の一覧を取得する。ただし３０％値下げした時の単価を商品コード、
商品名、現在の単価と併せて取得する。値下げ後の単価の見出しは、「値下げした単価」
とし、１円未満は切り捨てること。*/
SELECT  unit_price,product_name,product_code,ROUND(unit_price * 0.7,0) AS 値下げした単価 
FROM    products
WHERE   unit_price  >= 10000
