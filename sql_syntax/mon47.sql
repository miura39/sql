/*注文日順に、注文日ごとの数量の合計を求める*/
SELECT  order_date, SUM(quantity) AS '日付ごとの合計'
FROM    lf_order
GROUP BY order_date