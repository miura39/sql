/*商品コード「S1990」の廃盤日を関数を使って本日の日付に修正する。*/
UPDATE  db_products
SET     discountinued_product_date = CURRENT_DATE
WHERE   product_code = 'S1990'

