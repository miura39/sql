/*注文番号の連番部分が「１０００」〜「２０００」の注文番号を抽出する。連番部分４桁を
昇順で捻出すること。*/
SELECT  *,SUBSTRING(order_no,9,4)
FROM    lf_order
WHERE SUBSTRING(order_no,9,4) BETWEEN 1000 AND 2000
ORDER BY SUBSTRING(order_no,9,4) ASC

