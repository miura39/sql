/*商品テーブルから、これまでに注文されたことのない商品コードを
商品コードの昇順に抽出する*/
SELECT  *
FROM    products
LEFT OUTER JOIN  lf_order
ON products.product_code IS NULL = lf_order.product_code IS NULL
ORDER BY products.product_code