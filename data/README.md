# Dataset

This project uses the **Superstore Sales dataset**, a commonly used retail analytics dataset containing transactional sales information.

## Main Columns Used

| Column          | Description          |
| --------------- | -------------------- |
| `row_id`        | Row identifier       |
| `order_id`      | Order identifier     |
| `order_date`    | Order date           |
| `ship_date`     | Shipping date        |
| `customer_id`   | Customer identifier  |
| `customer_name` | Customer name        |
| `segment`       | Customer segment     |
| `region`        | Sales region         |
| `category`      | Product category     |
| `sub_category`  | Product sub-category |
| `product_id`    | Product identifier   |
| `product_name`  | Product name         |
| `sales`         | Sales amount         |
| `quantity`      | Quantity sold        |
| `discount`      | Discount applied     |
| `profit`        | Profit generated     |

## Files

### `Superstore_Analysis.xlsx`

The workbook contains the prepared dataset and supporting exploratory analysis used in the project.

It includes:

* **9,994** transactional records
* Customer and product information
* Sales, quantity, discount and profit metrics
* Category and sub-category information
* Regional and state-level analysis
* Monthly sales and profit trends
* Discount analysis
* Customer and product analysis

The `Raw_Data` sheet contains the prepared transactional dataset used as the basis for the SQL and Power BI analysis.

## Data Preparation

The dataset was prepared before analysis by:

* Standardizing the `Order Date` and `Ship Date` fields
* Ensuring both date columns are stored as valid Excel dates
* Adding `Order Year`
* Adding `Order Month No.`
* Adding `Order Month`
* Performing data-quality validation

The prepared workbook was then used as the basis for the subsequent **MySQL/SQL analysis and Power BI dashboard**.

The original raw source dataset is not included separately in this repository.

## Data Privacy

The dataset is a public/sample retail dataset and does not contain personal or confidential business data.