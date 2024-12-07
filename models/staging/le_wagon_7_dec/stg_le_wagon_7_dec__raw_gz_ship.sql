with 

source as (

    select * from {{ source('le_wagon_7_dec', 'raw_gz_ship') }}

),

renamed as (ship

    select
        orders_id,
        shipping_fee,
        shipping_fee_1,
        logcost,
        ship_cost

    from source

)

select * from renamed
