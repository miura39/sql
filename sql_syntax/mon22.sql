/*注文テーブルから２０１８年３月中に、一度の注文で
数量３個以上の注文があった商品コードを抽出する。*/
SELECT order_no FROM lf_order
WHERE order_date BETWEEN '2018-03-01' AND '2018-04-01'
AND quantity >=3