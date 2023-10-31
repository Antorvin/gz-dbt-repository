select 
cast(purchase_price as float64)*quantity as purchase_cost
,round(revenue-(cast(purchase_price as float64)),2) as margin
from {{ ref("stg_gz_raw_data__raw_gz_product_copy")}}
join {{ ref("stg_gz_raw_data__raw_gz_sales_copy")}}
on product_id = products_id