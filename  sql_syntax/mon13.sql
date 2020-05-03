/*注文テーブルから、商品コードが「N」で始まる商品を削除する*/
SELECT
  *
FROM
  lf_order
WHERE
  coupon_discount_fee IN (0);