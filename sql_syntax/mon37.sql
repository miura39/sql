/*注文テーブルから、注文番号「201710010001」〜「201710319999」の
注文データを抽出する。注文番号と枝番は「-」（ハイフン）でつなげて１つの項目として抽出する。*/
SELECT  CONCAT(order_no,'-',order_branch_no)
FROM    lf_order
WHERE   order_no BETWEEN 201710010001 AND 201710319999