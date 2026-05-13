SELECT
  order_id,
  customer_id,
  order_status,
  CAST(order_purchase_timestamp AS DATETIME) AS ordered_at,
  CAST(order_delivered_customer_date AS DATETIME) AS delivered_at
FROM {{ source('raw_data', 'olist_orders_dataset') }}
WHERE order_id IS NOT NULL