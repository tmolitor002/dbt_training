select
    id as order_id,
<<<<<<< HEAD
    customer as customer_id,
    ordered_at as order_date
from {{ source('jaffle_shop', 'orders') }}
=======
    user_id as customer_id,
    order_date,
    status
from raw.jaffle_shop_orders
>>>>>>> 357b79fdb29a2d28274ecbf30db71894697d008d
