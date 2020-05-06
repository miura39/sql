/*現在販売中の商品について、関連している商品のある一覧を抽出する。一覧には、
商品コード、商品名、関連商品コード、関連商品名を記載する。*/
SELECT  
        A.product_code,
        A.related_product,
        A.product_name AS "A関連",
        B.product_name AS "B関連"
FROM  products AS A
LEFT JOIN  products AS B
ON    A.product_code = B.related_product;