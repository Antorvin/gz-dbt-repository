select 
cast(purchse_price as INT64)
from {{ ref("stg_gz_raw_data__raw_gz_product_copy")}}
join {{ ref("stg_gz_raw_data__raw_gz_sales_copy")}}
on product_id = products_id