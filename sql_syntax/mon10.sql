/*注文テーブルから2018年以降の注文データを抽出する。*/
SELECT
  *
FROM
  lf_order
WHERE
  DATE_FORMAT(order_date,'%Y') >= '2018';