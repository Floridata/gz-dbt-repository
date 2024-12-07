with 

source as (

    select * from {{ source('le_wagon_7_dec', 'raw_sales') }}

),

renamed as (sales

    select
        date_date,
        orders_id,
        pdt_id,
        revenue,
        quantity

    from source

)

select * from renamed
