/*商品テーブルについて、商品コードの１行目が「M」の商品の商品コード
を「E」で始まるよう更新する。*/
UPDATE  products
SET     product_code = REPLACE(product_code,'M','E')
