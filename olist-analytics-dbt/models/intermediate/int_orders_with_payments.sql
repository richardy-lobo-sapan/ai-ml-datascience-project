SELECT
  o.order_id,
  o.customer_id,
  o.ordered_at,
  o.order_status,
  p.payment_type,
  p.payment_value,
  p.payment_installments,
  DATE_DIFF(o.delivered_at, o.ordered_at, DAY) AS delivery_days
FROM {{ ref('stg_orders') }} o
LEFT JOIN {{ ref('stg_payments') }} p USING (order_id)