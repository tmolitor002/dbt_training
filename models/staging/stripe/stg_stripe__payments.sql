SELECT
    "ID"                AS payment_id
    , "ORDERID"         AS order_id
    , "PAYMENTMETHOD"   AS payment_method
    , "STATUS"          AS status
    -- amount is stored in cents, convert it to dollars
    , "AMOUNT" / 100    AS amount
    , "CREATED"         AS created_at
FROM {{ source('raw', 'stripe_payments') }}