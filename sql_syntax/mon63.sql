/*次の商品日て、商品情報（商品コード、商品名、単価）とこれまでの注文情報（注文
日、注文番号、数量）、さらに単価と数量から売り上げ金額を一覧として抽出する。一覧は、
注文のあった順に表示すること。*/
SELECT  products.product_code,
        product_name,
        unit_price,
        order_date,
        order_no,
        quantity,
        unit_price * quantity
FROM  products
JOIN  lf_order
ON    lf_order.product_code = products.product_code
WHERE products.product_code = 'S0604'
ORDER BY order_date ASC
