SELECT *
FROM {{ source('raw', 'jaffle_shop_orders') }}