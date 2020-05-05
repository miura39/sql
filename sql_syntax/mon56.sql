/*次の注文について、商品コードを間違って登録したことがわかった。
商品テーブルより条件に合致する商品コードを取得し、該当の注文テーブルを更新する。
ただし、注文テーブルの更新には、SET句似て商品テーブルを副問合せするUPDATE文を用いる。
・注文日：2018-03-15 注文番号：201803150014 注文枝番：１
・正しい商品の条件：商品区分が「靴」で、商品名に「ブーツ」「雨」「安心」を含む。*/
UPDATE  lf_order
SET     product_code
           =(SELECT product_code
             FROM   products
             WHERE  product_code='B1350')
WHERE   order_no = '201803150014';

UPDATE  lf_order
SET     order_branch_no
           =(SELECT categories
             FROM   products
             WHERE  product_code='B1350')
WHERE   order_no = '201803150014';
