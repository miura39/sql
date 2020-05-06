/*問題６４では、すでに廃盤となっている商品は抽出されなかった。廃盤となった商品も
もれなく一覧に記載されるよう、SQL文を改善する。なお、廃盤商品は商品名としては
「廃盤」の文言を表示すること。*/
SELECT  
        products.product_code as 'products',
        lf_order.product_code as 'lf_order',
        db_products.product_code as 'haiban'
        -- products.product_name
FROM  lf_order
left JOIN  products
ON    lf_order.product_code = products.product_code
union
SELECT  
        -- products.product_code as 'products',
        lf_order.product_code as 'lf_order',
        db_products.product_code as 'haiban',
        products.product_name
from lf_order
right JOIN  products
ON    lf_order.product_code = products.product_code

left join db_products
ON    products.product_code = db_products.product_code
-- WHERE order_date >= '2016-08-01'
-- AND   order_date <= '2016-08-31' 