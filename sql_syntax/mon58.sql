/*商品ごとにそれぞれ平均販売数量を求め、どの商品の平均販売数量よりも多い数が売れ
た商品を探し、その商品コードと販売数量を抽出する。ただし、ALL演算子を利用した
副問い合わせを用いること。
http://kobarin.hateblo.jp/entry/20091023/1256281038*/

SELECT    product_code,AVG(quantity)
FROM      lf_order
GROUP BY  product_code
HAVING AVG(quantity)>=
      ALL(SELECT  AVG(quantity)
          FROM    lf_order
          GROUP BY product_code)