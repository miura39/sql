/*注文テーブルから、これまでに注文のあった商品コードを抽出する。
重複は除外し、商品コードの昇順に抽出すること。*/
SELECT DISTINCT product_code
FROM    lf_order
ORDER BY product_code ASC

