with source as (

  select * from {{ source('dbt_mig', 'insurance_policies') }}

),

renamed as (

  select
    policy_id,
    policy_type,
    customer_id,
    customer_name,
    start_date,
    end_date,
    premium_amount,
    coverage_amount,
    deductible,
    status,
    agent_id,
    last_updated

  from source

)

select * from renamed



