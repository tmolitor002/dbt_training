with final as (
    select
        "ID" as payment_id,
        "ORDERID" as order_id,
        "PAYMENTMETHOD" as payment_method,
        "STATUS" as status,
        -- amount is stored in cents, conver it to dollars
        CAST("AMOUNT" as int) / 100 as amount,
        "CREATED" as created_at
    from {{ source('stripe', 'stripe_payments') }}
)

select * from final
