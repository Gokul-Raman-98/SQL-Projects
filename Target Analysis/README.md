# Project Description
## This project explores the Target store dataset to extract valuable insights and provide actionable recommendations. The Data Analysis is done using Big Query.

## The major aim of thie project is to gain insights in the orders, money movement, sales, freight, payments and delivery time.

### Tables List

Eight Tables were used in total, the table names and their columns are shown below

1. customers

<img width="1160" height="723" alt="image" src="https://github.com/user-attachments/assets/e6ec09d9-e4d5-4a89-9962-0864142982fd" />

2. geolocation

<img width="925" height="681" alt="image" src="https://github.com/user-attachments/assets/87eef919-9158-44b3-9e2a-e725c7a1ecc2" />

3. order_items

<img width="1400" height="666" alt="image" src="https://github.com/user-attachments/assets/c6b15e17-7f7b-420b-94bc-13703a48c411" />

4. order_reviews

<img width="1396" height="667" alt="image" src="https://github.com/user-attachments/assets/48288b82-84d4-4f96-aa75-c89d6135f9fc" />

5. orders

<img width="1663" height="716" alt="image" src="https://github.com/user-attachments/assets/77f8c511-8bfa-4ba5-9d98-359e59ad842c" />

6. payments

<img width="922" height="667" alt="image" src="https://github.com/user-attachments/assets/e6412e4c-8225-4f72-b033-ec3198353dea" />

7. products

<img width="1393" height="667" alt="image" src="https://github.com/user-attachments/assets/69c56e1e-4dd8-47da-bd31-ad4c541ac463" />

8. sellers

<img width="918" height="670" alt="image" src="https://github.com/user-attachments/assets/6df58efb-2dbc-47d2-bb19-bfa3f8932d5d" />


## Relationship Diagram

<img width="1275" height="761" alt="image" src="https://github.com/user-attachments/assets/fb14fdc3-6794-4674-a596-09c7b99d8674" />


## SQL queries and results

### 1. Get the time range between which the orders were placed.
<img width="387" height="90" alt="image" src="https://github.com/user-attachments/assets/84b7799f-0adf-48cd-8dae-3a2596a507ab" />

### Result
<img width="551" height="170" alt="image" src="https://github.com/user-attachments/assets/ab96191a-7015-4d7a-83c2-1b3f98757214" />


### 2. Display the Cities & States of customers who ordered during the given period.
<img width="578" height="167" alt="image" src="https://github.com/user-attachments/assets/a07da622-2f9d-4488-97db-1bdd4395b50b" />

### Result
<img width="550" height="558" alt="image" src="https://github.com/user-attachments/assets/d235a3a6-b4ed-408d-880f-904ac5b828f1" />

### 3. Is there a growing trend in the no. of orders placed over the past years? Can we see some kind of monthly seasonality in terms of the no. of 
orders being placed? 
<img width="488" height="127" alt="image" src="https://github.com/user-attachments/assets/f9fc60bd-d707-4164-bc03-585d14aec756" />

### Result
<img width="395" height="421" alt="image" src="https://github.com/user-attachments/assets/c5edf06f-f1aa-43cb-8a8a-d3625c9226d5" />

### 4. During what time of the day, do the Brazilian customers mostly place their orders? (Dawn, Morning, Afternoon or Night) 
### ■ 0-6 hrs : Dawn 
### ■ 7-12 hrs : Mornings 
### ■ 13-18 hrs : Afternoon 
### ■ 19-23 hrs : Night 
<img width="478" height="137" alt="image" src="https://github.com/user-attachments/assets/aa05ddfc-6c19-4033-a0b1-2b5c81c729b3" />

### Result
<img width="380" height="560" alt="image" src="https://github.com/user-attachments/assets/07dcea26-55bb-4749-8251-4a0b96cc6f25" />

### 5. Get the month on month no. of orders placed in each state.
<img width="470" height="150" alt="image" src="https://github.com/user-attachments/assets/d1d8b734-9c35-460a-8118-5f1fdb517d7e" />

### Result
<img width="522" height="562" alt="image" src="https://github.com/user-attachments/assets/bd7c9f50-c42d-40de-9922-c1df8365c364" />

### 6. How are the customers distributed across all the states? 
<img width="395" height="122" alt="image" src="https://github.com/user-attachments/assets/44858478-472c-4128-ab95-e30edb143d94" />

### Result
<img width="463" height="493" alt="image" src="https://github.com/user-attachments/assets/66807608-95d4-4ae1-a1ae-5394b1661324" />

### 7. Get the % increase in the cost of orders from year 2017 to 2018 (include months between Jan to Aug only).
<img width="626" height="496" alt="image" src="https://github.com/user-attachments/assets/2b2af84b-24a8-4569-ae40-f4beb1ffc59e" />

### Result
<img width="285" height="207" alt="image" src="https://github.com/user-attachments/assets/0a68cc20-77b2-42e5-ad04-9a27d07f27d0" />













