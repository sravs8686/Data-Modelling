CREATE TABLE dim_country (
  country_id INT PRIMARY KEY,
  country_name TEXT
);

CREATE TABLE dim_region (
  region_id INT PRIMARY KEY,
  region_name TEXT,
  country_id INT,
  FOREIGN KEY (country_id) REFERENCES dim_country(country_id)
);

CREATE TABLE dim_customer (
  customer_id INT PRIMARY KEY,
  name TEXT,
  email TEXT,
  region_id INT,
  FOREIGN KEY (region_id) REFERENCES dim_region(region_id)
);

CREATE TABLE dim_category (
  category_id INT PRIMARY KEY,
  category_name TEXT
);

CREATE TABLE dim_product (
  product_id INT PRIMARY KEY,
  name TEXT,
  category_id INT,
  price NUMERIC,
  FOREIGN KEY (category_id) REFERENCES dim_category(category_id)
);

-- Fact table remains mostly the same
