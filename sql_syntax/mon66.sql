/*商品区分「雑貨」の商品について、注文日、商品コード、商品名、数量を抽出する。商品
については、「商品コード：商品名」の形式で表示する。ただし、注文のなかった「雑貨」
についても、もれなく一覧に記載し、数量は０とすること。*/
SELECT  order_date,
        products.product_code,
        CONCAT(products.product_code,"：",products.product_name) AS "商品コード：商品名",
        quantity,
        categories
FROM  lf_order
RIGHT JOIN  products
ON    lf_order.product_code = products.product_code
WHERE products.categories = 3