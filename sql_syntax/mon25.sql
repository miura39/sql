/*商品区分「衣類」の商品について、商品コードの降順に
商品コードと商品名の一覧を取得する。*/
SELECT  *
FROM    products
ORDER BY product_code DESC

/*昇順、降順の使い方
昇順 = ORDER BY カラム名 ASC
降順 = ORDER BY kラム名 DESC
*/
