/*商品テーブルから、商品区分の一覧を取得する。見出しは「区分」と「区分名」とし
区分名には日本語名を表記する。*/
SELECT
  product_code,
  product_name,
  unit_price,
  categories,
  related_product,
    CASE categories WHEN 1 THEN '衣類'
                    WHEN 2 THEN '靴'
                    WHEN 3 THEN '雑貨'
                    WHEN 9 THEN '未文類'
            ELSE 'データなし'
    END AS '区分と区分名'
FROM  products
WHERE categories;
