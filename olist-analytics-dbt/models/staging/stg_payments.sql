SELECT
  order_id,
  payment_type,
  payment_installments,
  payment_value
FROM {{ source('raw_data', 'olist_order_payments_dataset') }}
WHERE order_id IS NOT NULL