#Import the dataset and do usual exploratory analysis steps like checking the #structure & characteristics of the dataset

SELECT *
FROM `targetproject-479914.target_sql.customers`
LIMIT 10;

SELECT *
FROM `targetproject-479914.target_sql.geolocation`
LIMIT 10;

# Get the time range between which the orders were placed.

SELECT
MIN(order_purchase_timestamp) AS start_time,
MAX(order_purchase_timestamp) AS end_time
FROM `target_sql.orders`
;


# Display the Cities & States of customers who ordered during the given period.

SELECT
c.customer_city, c.customer_state
FROM `targetproject-479914.target_sql.orders` AS o
JOIN `targetproject-479914.target_sql.customers` AS c
ON
o.customer_id = c.customer_id
WHERE EXTRACT(YEAR FROM o.order_purchase_timestamp) = 2018
AND EXTRACT(MONTH FROM order_purchase_timestamp) BETWEEN 1 AND 3;


# Is there a growing trend in the no.of orders placed over the past years?

SELECT
EXTRACT(MONTH FROM order_purchase_timestamp) AS month,
COUNT(order_id) AS order_num
FROM `target_sql.orders`
GROUP BY EXTRACT(MONTH FROM order_purchase_timestamp)
ORDER BY order_num DESC;


# During what time of the day, do the Brazilian customers mostly place 
# their orders? (Dawn, Morning, Afternoon or Night) 
# ■ 0-6 hrs : Dawn 
# ■ 7-12 hrs : Mornings 
# ■ 13-18 hrs : Afternoon 
# ■ 19-23 hrs : Night 

SELECT
EXTRACT(HOUR FROM order_purchase_timestamp) AS time,
COUNT(order_id) AS order_num
FROM `target_sql.orders`
GROUP BY EXTRACT(HOUR FROM order_purchase_timestamp)
ORDER BY order_num DESC;


# Get the month on month no. of orders placed in each state.

SELECT
EXTRACT(MONTH FROM order_purchase_timestamp) AS month,
EXTRACT(YEAR FROM order_purchase_timestamp) AS year,
COUNT(*) AS num_orders
FROM `target_sql.orders`
GROUP BY year, month
ORDER BY year, month;


#How are the customers distributed across all the states in Brazil? 

SELECT customer_state,
COUNT(DISTINCT customer_id) AS customer_count
FROM `target_sql.customers`
GROUP BY customer_state
ORDER BY customer_count DESC;


# Get the % increase in the cost of orders from year 2017 to 2018 
# (include months between Jan to Aug only).

WITH yearly_totals AS
(
SELECT
EXTRACT (YEAR FROM o.order_purchase_timestamp) AS year,
SUM(p.payment_value) AS total_payment
FROM `target_sql.payments` AS p
JOIN `target_sql.orders` AS o
ON p.order_id = o.order_id
WHERE EXTRACT (YEAR FROM o.order_purchase_timestamp) IN (2017,2018)
AND EXTRACT (MONTH FROM o.order_purchase_timestamp) BETWEEN 1 AND 8
GROUP BY EXTRACT (YEAR FROM o.order_purchase_timestamp)
),

yearly_comparisons AS
(
SELECT
year,
total_payment,
LEAD(total_payment) OVER (ORDER BY year DESC) AS prev_year_payment
FROM yearly_totals
)

SELECT
ROUND(((total_payment - prev_year_payment) / prev_year_payment)*100,2)
FROM yearly_comparisons;


# Calculate the Total & Average value of order price and freight value for each state

SELECT
c.customer_state,
AVG(oi.price) AS avg_price,
SUM(oi.price) AS sum_price,
AVG(oi.freight_value) AS avg_freight,
SUM(oi.freight_value) AS sum_freight
FROM `target_sql.orders` AS o
JOIN `target_sql.order_items` AS oi
ON o.order_id = oi.order_id
JOIN `target_sql.customers` AS c
ON o.customer_id = c.customer_id
GROUP BY c.customer_state;


# Find the no. of days taken to deliver each order from the order’s 
# purchase date as delivery time
# calculate the difference (in days) between the estimated & actual 
# delivery date of an order. 

SELECT
order_id,
DATE_DIFF(DATE(order_delivered_customer_date), DATE(order_purchase_timestamp),DAY)AS days_to_delivery,
DATE_DIFF(DATE(order_delivered_customer_date), DATE(order_estimated_delivery_date),DAY)AS diff_estimated_delivery
FROM `target_sql.orders`;


# Find out the top 5 states with the highest & lowest average freight value

SELECT
c.customer_state,
AVG(oi.freight_value) AS avg_freight_value
FROM `target_sql.orders` AS o
JOIN `target_sql.order_items` AS oi
ON o.order_id = oi.order_id
JOIN `target_sql.customers` AS c
ON o.customer_id = c. customer_id
GROUP BY customer_state
ORDER BY avg_freight_value DESC
LIMIT 5;


# Find out the top 5 states with the highest & lowest average delivery time

SELECT
c.customer_state,
AVG(EXTRACT(DATE FROM o.order_delivered_customer_date)- EXTRACT (DATE FROM o.order_estimated_delivery_date)) AS avg_time_to_delivery
FROM `target_sql.orders` AS o
JOIN `target_sql.order_items` AS oi
ON o.order_id = oi.order_id
JOIN `target_sql.customers` AS c
ON o.customer_id = c. customer_id
GROUP BY customer_state
ORDER BY avg_time_to_delivery DESC
LIMIT 5;



# Find out the top 5 states where the order delivery is really fast as compared to the estimated date of delivery.

SELECT
c.customer_state,
AVG(EXTRACT(DATE FROM o.order_delivered_customer_date)- EXTRACT (DATE FROM o.order_purchase_timestamp)) AS avg_time_to_delivery
FROM `target_sql.orders` AS o
JOIN `target_sql.order_items` AS oi
ON o.order_id = oi.order_id
JOIN `target_sql.customers` AS c
ON o.customer_id = c. customer_id
GROUP BY customer_state
ORDER BY avg_time_to_delivery DESC
LIMIT 5;


# Find the month on month no. of orders placed using different payment types

SELECT
payment_type,
EXTRACT(YEAR FROM order_purchase_timestamp) AS year,
EXTRACT(MONTH FROM order_purchase_timestamp) AS month,
COUNT(DISTINCT o.order_id) AS order_count
FROM `target_sql.orders` AS o
JOIN `target_sql.payments` AS p
ON o.order_id = p.order_id
GROUP BY payment_type, year, month
ORDER BY payment_type, year, month;


# Find the no. of orders placed on the basis of the payment installments that have been paid.

SELECT
payment_installments,
COUNT (DISTINCT order_id) AS num_orders
FROM `target_sql.payments`
GROUP BY payment_installments;

