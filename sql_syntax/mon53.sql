/*月ごとの注文件数を求める。抽出する列の名前は「年月」と「注文件数」とし
年月列の内容は201701のような形式で、日付の新しい順序で抽出すること。なお、１件
の注文には、必ず注文枝番「１」の注文明細が含まれていることが保証されている。*/
SELECT  
        DATE_FORMAT(order_date, '%Y%m') AS 年月,
        COUNT(*) AS 注文件数,
        order_branch_no
FROM    lf_order 
GROUP BY 
        DATE_FORMAT(order_date, '%Y%m');
having  order_branch_no = 1