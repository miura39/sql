/*注文テーブルから2017年11月以降の注文データを抽出する。*/
SELECT
  *
FROM
  lf_order
WHERE
  order_date >= '2017-11';