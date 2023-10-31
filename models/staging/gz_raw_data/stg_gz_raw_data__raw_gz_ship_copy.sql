with 

source as (

    select * from {{ source('gz_raw_data', 'raw_gz_ship_copy') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logcost,
        ship_cost

    from source
    

)

select * from renamed