/*商品名に「あったか」が含まれる商品が売れた日付とその商品コードを過去の日付順に抽出
する。ただし、WHERE区でIN演算子を利用した副問い合わせを用いること。*/
SELECT  *
FROM    lf_order
WHERE  product_code 
    IN(SELECT DISTINCT product_code FROM products
       WHERE product_name LIKE "%あったか%")
ORDER BY order_date ASC