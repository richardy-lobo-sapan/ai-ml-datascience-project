# Olist E-commerce Analytics — dbt + BigQuery

## Overview
End-to-end dbt project modeling Brazilian e-commerce data
into a star schema for business analytics.
Built as a hands-on data engineering project using dbt Core and Google BigQuery.

## Architecture
Raw CSVs (BigQuery) → Staging → Intermediate → Mart

## Models

| Layer | Model | Description |
|-------|-------|-------------|
| Staging | stg_orders | Cleaned orders with timestamps |
| Staging | stg_customers | Cleaned customer data |
| Staging | stg_payments | Cleaned payment transactions |
| Staging | stg_order_items | Cleaned order line items |
| Intermediate | int_orders_with_payments | Orders joined with payment data |
| Mart | fct_orders | Final fact table for order analytics |
| Mart | dim_customers | Customer dimension with state aggregates |

## Data Quality Tests
- Uniqueness and not-null checks on all primary keys
- Accepted values validation on payment types
- 7 tests, all passing

## Stack
- Google BigQuery (data warehouse)
- dbt Core 1.11 (transformation + testing)
- Python 3.9

## Dataset
Brazilian E-commerce dataset by Olist — 100k orders with
payment, customer, and product information.
Source: https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce