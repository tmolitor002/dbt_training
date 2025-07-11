select
    id as customer_id,
<<<<<<< HEAD
    name as full_name
from {{ source('jaffle_shop', 'customers') }}
=======
    first_name as given_name,
    last_name as surname
from raw.jaffle_shop_customers
>>>>>>> 357b79fdb29a2d28274ecbf30db71894697d008d
