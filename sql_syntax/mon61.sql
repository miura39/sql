/*次の注文番号について、注文番号、注文枝番、商品コード、商品名、数量の一覧を注文番号
及び注文枝番の順に抽出する。商品名は商品テーブルより取得すること。
・注文番号：201801130115*/
SELECT  order_no,
        order_branch_no,
        lf_order.product_code,
        product_name,
        quantity
FROM  lf_order
JOIN  products
ON    lf_order.product_code = products.product_code
WHERE order_no = 201801130115
ORDER BY order_no ASC ,order_branch_no ASC