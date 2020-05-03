/*注文テーブルから、一度の注文で数量１０個以上を注文したか、
クーポン割引を利用した注文データを抽出する*/
SELECT  *
FROM    lf_order
WHERE   quantity >=10
OR      coupon_discount_fee <> 0