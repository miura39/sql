/*商品テーブルの商品区分「未分類」の商品について、商品コード、単価、
キャンペーン価格の一覧を取得する。キャンペーン価格は単価の５％引きであり
１円未満の単数は考慮しなくて良い。一覧は商品コード順に並べること。*/
SELECT  product_code,unit_price,
        unit_price * 0.95 AS キャンペーン価格
FROM    products