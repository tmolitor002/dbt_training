SELECT
    "ID"              AS order_id
    , "USER_ID"       AS customer_id
    , "ORDER_DATE"    AS order_date
    , "STATUS"        AS status
FROM {{ source('raw', 'jaffle_shop_orders') }}
