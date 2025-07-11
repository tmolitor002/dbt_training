with payments as (
    select * from {{ ref('stg_stripe__payment') }}
)

, order_totals as (
select
    order_id,
    sum(amount) as total_amount
from
    payments
group by
    order_id
)

select *
from order_totals
where total_amount < 0
