SELECT
  order_id,
  product_id,
  seller_id,
  price,
  freight_value
FROM {{ source('raw_data', 'olist_order_items_dataset') }}
WHERE order_id IS NOT NULL