/*次の既存の注文に、内容を追加する訂正があった。追加分の注文を注文テーブルに登録する。
注文枝番は同じ注文番号を副問い合わせ似て参照し、１を加算した番号を裁判する。SQL文は注文
ごとに１つずつ作成すること。
・注文日：2018-03-21、注文番号：201803210080
商品コード：S1003、数量：１、クーポン割引：なし
・注文日：2018-03-22、注文番号：201803220901
商品コード：A0052、数量：２、クーポン割引：500円*/

INSERT INTO lf_order(order_date,
                     order_no,
                    order_branch_no,
                    product_code,
                    quantity,
                    coupon_discount_fee)
SELECT   '2018-03-21',
         201803210080,
         MAX(order_branch_no)+1,
         'S1003',
         1,
         500
FROM     lf_order
WHERE    order_no = '201803210080';

INSERT INTO lf_order(order_date,
                     order_no,
                    order_branch_no,
                    product_code,
                    quantity,
                    coupon_discount_fee)
SELECT   '2018-03-22',
         201803220901,
         MAX(order_branch_no)+1,
         'A0052',
         2,
         0
FROM     lf_order
WHERE    order_no = '201803220901'


