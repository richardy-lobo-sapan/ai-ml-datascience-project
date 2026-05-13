SELECT
  customer_id,
  customer_city,
  customer_state,
  COUNT(*) OVER (PARTITION BY customer_state) AS customers_in_state
FROM {{ ref('stg_customers') }}