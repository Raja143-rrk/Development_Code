select
    policy_id,
    customer_name,
    premium_amount,
    case 
        when premium_amount > 50000 then 'High'
        when premium_amount between 20000 and 50000 then 'Medium'
        else 'Low'
    end as risk_category
from {{ source('dbt_mig', 'insurance_policies') }}
where status = 'Active' and start_date <= '2024-01-01'