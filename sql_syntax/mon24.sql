/*商品テーブルと注文テーブルそれぞれについて、主キーの役割を果たしている
列名を日本語で解答する。*/
SELECT
  products.product_code AS 商品テーブルの商品コード,
  lf_order.product_code AS 注文テーブルの商品コード
FROM
  products
JOIN
  lf_order
ON
  products.product_code = lf_order.product_code