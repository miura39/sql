/*注文番号「2018022501216」について、商品コード「W0156」の注文数
を１つ減らすよう更新する。*/
UPDATE  lf_order
SET     quantity = quantity - 1
WHERE   product_code = 'W0156'
AND     order_no = '201802250126'