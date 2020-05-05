/*注文テーブルから、注文日と注文番号の一覧を抽出する。注文番号は日付の
部分を取り除き、４桁の連番部分だけを表記すること。*/
SELECT  order_date,SUBSTRING(order_no,9,4)
FROM    lf_order