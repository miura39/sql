/*注文テーブルから、主キーの昇順に２０１８年３月以降の注文一覧を取得する。
取得する項目は、注文日、注文番号、注文枝番、商品コード、数量とする。*/
SELECT 
  order_date,
  order_no,
  order_branch_no,
  product_code,
  quantity
FROM
  lf_order
WHERE order_date >= '2018-03-01'
AND   order_date <= '2018-03-31'
ORDER BY product_code ASC