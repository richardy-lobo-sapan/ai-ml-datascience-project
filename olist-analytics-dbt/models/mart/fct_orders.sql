SELECT
  o.order_id,
  o.customer_id,
  o.ordered_at,
  o.order_status,
  o.payment_type,
  o.payment_value,
  o.payment_installments,
  o.delivery_days,
  c.customer_city,
  c.customer_state
FROM {{ ref('int_orders_with_payments') }} o
LEFT JOIN {{ ref('stg_customers') }} c USING (customer_id)