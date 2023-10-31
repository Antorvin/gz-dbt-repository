with 

source as (

    select * from {{ source('gz_raw_data', 'raw_gz_product_copy') }}

),

renamed as (

    select
        products_id,
        purchse_price as purchase_price

    from source

)

select * from renamed
