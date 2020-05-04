/*注文テーブルから、注文のあった日付を新しい順に１０行抽出する
（同一日付が複数回登場しても良い）*/
SELECT  *
FROM    lf_order
ORDER BY order_date ASC
LIMIT   10
