# Mock E-commerce Dataset Description

This project uses the following mock entities:

## Fact Table
- **fact_orders**
  - order_id
  - customer_id
  - product_id
  - quantity
  - price
  - order_date

## Dimension Tables

### Star Schema
- **dim_customer**: customer_id, name, email, region
- **dim_product**: product_id, name, category, price
- **dim_date**: date_id, day, month, year, weekday
- **dim_region**: region_id, region_name

### Snowflake Schema (normalized)
- **dim_customer**
  - customer_id, name, email, region_id
- **dim_region**
  - region_id, region_name, country_id
- **dim_country**
  - country_id, country_name
- **dim_product**
  - product_id, name, category_id, price
- **dim_category**
  - category_id, category_name
