/*商品テーブルから、商品コード、商品名、単価、販売価格ランク、商品区分を抽出する。
販売価格ランクは、３千円未満を「S」、３千円以上１万円未満を「M」、１万円以上を「L」
とする。また、商品区分はコードと日本語名称を「：」（コロン）で連結して表記する。
一覧は、単価の昇順に比べ、同額の場合は商品コードの昇順に並べること。*/
SELECT
  product_code,
  product_name,
  unit_price,
  categories,
    CASE  WHEN unit_price < 3000 THEN 'S'
          WHEN unit_price >= 3000 AND unit_price < 10000 THEN 'M'
          WHEN unit_price >= 10000 THEN 'L'
          ELSE 'データなし'
    END AS '販売価格ランク'
FROM  products
WHERE unit_price > 0
ORDER BY unit_price ASC ;
