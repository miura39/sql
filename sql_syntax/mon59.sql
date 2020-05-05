/*次の商品について、クーポン割引を利用して販売したものについて、その販売数量と、
商品１個あたりの平均割引額を抽出する。列名は「割引による販売数」と「平均割引額」
とし、１円未満は切り捨てる。また、抽出にはFROM句で副問い合わせを利用すること。*/

SELECT  SUM(quantity) AS "割引による販売数",
        ROUND(SUM(coupon_discount_fee)/SUM(quantity)) AS "平均割引額"
FROM(SELECT *
    FROM lf_order
    WHERE coupon_discount_fee <> 0) AS a
