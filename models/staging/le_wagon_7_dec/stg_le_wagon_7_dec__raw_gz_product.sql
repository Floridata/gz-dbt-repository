with 

source as (

    select * from {{ source('le_wagon_7_dec', 'raw_gz_product') }}

),

renamed as (product

    select
        products_id,
        purchse_price

    from source

)

select * from renamed
