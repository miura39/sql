/*商品テーブルから、単価の低い順に並べて６〜２０行目に当たる
商品データを抽出する。*/
SELECT    *
FROM      products
ORDER BY  unit_price ASC
LIMIT     6,14
