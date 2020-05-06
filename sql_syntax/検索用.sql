SELECT *
FROM
  lf_order
  -- where order_no like '%201803210080%'
  where order_no like '%201803220901%'
  order by order_branch_no desc