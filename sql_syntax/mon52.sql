/*これまでにクーポン割引した注文件数と、割引額の合計を求める。
ただしWHERE句による条件を指定しないこと。*/
SELECT
  COUNT(coupon_discount_fee) AS 'クーポン回数',
  SUM(coupon_discount_fee ) AS '割引額合計'
FROM    
  lf_order
GROUP BY coupon_discount_fee <> 0
ORDER BY coupon_discount_fee DESC
