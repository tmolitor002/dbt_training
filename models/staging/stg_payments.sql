SELECT *
FROM {{ source('raw', 'stripe_payments') }}