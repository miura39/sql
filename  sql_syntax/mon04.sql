/*注文テーブルの全ての注文番号、注文枝番、商品コードを抽出する*/
SELECT
  order_no,
  order_branch_no,
  product_code
FROM
  lf_order;