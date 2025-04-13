SELECT
    "ID"            AS customer_id
    , "FIRST_NAME"  AS first_name
    , "LAST_NAME"   AS last_name
FROM {{ source('raw', 'jaffle_shop_customers') }}