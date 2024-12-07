with 

source as (

    select * from {{ source('le_wagon_7_dec', 'raw_gz_product') }}

),

renamed as (

    select
        products_id, 
        CAST (purchse_price AS FLOAT64) as purchase_price

    from source

)

select * from renamed
