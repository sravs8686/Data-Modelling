CREATE TABLE dim_customer (
  customer_id INT PRIMARY KEY,
  name TEXT,
  email TEXT,
  region TEXT
);

CREATE TABLE dim_product (
  product_id INT PRIMARY KEY,
  name TEXT,
  category TEXT,
  price NUMERIC
);

CREATE TABLE dim_date (
  date_id DATE PRIMARY KEY,
  day INT,
  month INT,
  year INT,
  weekday TEXT
);

CREATE TABLE fact_orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  product_id INT,
  quantity INT,
  price NUMERIC,
  order_date DATE,
  FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
  FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
  FOREIGN KEY (order_date) REFERENCES dim_date(date_id)
);
