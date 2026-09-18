# Dataset

This project uses the **Superstore Sales dataset**, a commonly used retail analytics dataset containing transactional sales information.

The dataset includes information related to:

* Orders
* Customers
* Products
* Categories and sub-categories
* Sales
* Quantity
* Discounts
* Profit
* Regions
* Customer segments
* Shipping modes
* Order and shipping dates

## Dataset Usage

The raw dataset is not included in this repository.

The data was imported into **MySQL** and analyzed using SQL before being connected to **Power BI** for dashboard development.

## Main Columns Used

| Column             | Description             |
| ------------------ | ----------------------- |
| `order_id`         | Unique order identifier |
| `order_date_clean` | Cleaned order date      |
| `ship_date_clean`  | Cleaned shipping date   |
| `customer_id`      | Customer identifier     |
| `customer_name`    | Customer name           |
| `segment`          | Customer segment        |
| `region`           | Sales region            |
| `category`         | Product category        |
| `sub_category`     | Product sub-category    |
| `product_id`       | Product identifier      |
| `product_name`     | Product name            |
| `sales`            | Sales amount            |
| `quantity`         | Quantity sold           |
| `discount`         | Discount applied        |
| `profit`           | Profit generated        |

## Data Preparation

The dataset was loaded into MySQL and checked for:

* Record counts
* Missing values
* Date ranges
* Distinct orders
* Distinct customers
* Distinct products

Date fields were cleaned and converted into appropriate date formats before analysis.
