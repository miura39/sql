/*注文日が2018年3月12日〜14日で、同じ商品を２個以上注文し、
すでにクーポン割引を利用している注文について、さらに
３００円割引することになった。該当クーポンデータのクーポン
割引料を更新する。*/
UPDATE  lf_order
SET     coupon_discount_fee = coupon_discount_fee + 300
WHERE   order_date BETWEEN '2018-03-12' AND '2018-03-14'
AND     quantity >= 2;

/*チェック用*/
-- SELECT  *
-- FROM    lf_order
-- WHERE   order_date BETWEEN '2018-03-12' AND '2018-03-14'
-- AND     quantity >= 2;