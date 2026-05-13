SELECT
  customer_id,
  customer_city,
  customer_state
FROM {{ source('raw_data', 'olist_customers_dataset') }}
WHERE customer_id IS NOT NULL