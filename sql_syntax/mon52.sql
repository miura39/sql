/*これまでにクーポン割引した注文件数と、割引額の合計を求める。
ただしWHERE句による条件を指定しないこと。
https://qiita.com/shinkuFencer/items/eef08353b43f3512da7d*/
SELECT
  COUNT(coupon_discount_fee > 0 OR NULL) AS 'クーポン回数',
  SUM(coupon_discount_fee ) AS '割引額合計'
FROM    
  lf_order
