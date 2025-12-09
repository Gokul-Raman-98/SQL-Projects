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

### 3. Is there a growing trend in the no. of orders placed over the past years? Can we see some kind of monthly seasonality in terms of the no. of orders being placed? 
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

### 8. Calculate the Total & Average value of order price and freight value for each state
<img width="340" height="247" alt="image" src="https://github.com/user-attachments/assets/0650ca4b-92c5-4368-9461-b85dd5d42aea" />

#### Result
<img width="913" height="562" alt="image" src="https://github.com/user-attachments/assets/1cdb3008-c22a-4aab-96c1-10a0ba3eda1e" />

### 9. Find the no. of days taken to deliver each order from the order’s purchase date as delivery time
### 10. Find the difference (in days) between the estimated & actual delivery date of an order
<img width="1002" height="117" alt="image" src="https://github.com/user-attachments/assets/b1c85b7c-fad1-4513-bdf6-0beacfebacd5" />

#### Result
<img width="620" height="557" alt="image" src="https://github.com/user-attachments/assets/fa7e9431-68f1-410e-a5d8-57d7061cf95f" />

### 11. Find out the top 5 states with the highest & lowest average freight value
<img width="378" height="222" alt="image" src="https://github.com/user-attachments/assets/2a3e9582-3ef0-4828-868b-9499583069a8" />

### Result
<img width="465" height="302" alt="image" src="https://github.com/user-attachments/assets/7a6a151d-b87a-4285-9650-94d3c55226b9" />

### 12. Find out the top 5 states with the highest & lowest average delivery time
<img width="1158" height="225" alt="image" src="https://github.com/user-attachments/assets/02f43f1d-e2f4-4a17-92d0-016b252e5d1c" />

### Result
<img width="468" height="303" alt="image" src="https://github.com/user-attachments/assets/7aad6210-2c9f-4046-891c-43578b59857f" />

### 13. Find out the top 5 states with the highest & lowest average delivery time
<img width="1155" height="220" alt="image" src="https://github.com/user-attachments/assets/ab793c25-fa15-475c-a993-84d8e66fc09c" />

### Result
<img width="557" height="300" alt="image" src="https://github.com/user-attachments/assets/5b3f1d5e-e07a-4105-8339-28587f4c757e" />

### 14. Find out the top 5 states where the order delivery is really fast as compared to the estimated date of delivery
<img width="1118" height="217" alt="image" src="https://github.com/user-attachments/assets/0df35508-c68b-4010-ab7c-66ae3cc30d6d" />

### Result
<img width="555" height="302" alt="image" src="https://github.com/user-attachments/assets/309d8107-4e46-4ef9-b8f4-90d7ae38a819" />

### 15. Find the month on month no. of orders placed using different payment types
<img width="475" height="196" alt="image" src="https://github.com/user-attachments/assets/a5069dd0-c798-43b3-b536-8e9a10a13519" />

### Result
<img width="757" height="525" alt="image" src="https://github.com/user-attachments/assets/8f2ff469-4e48-4d42-be44-597ad8ef0a7c" />

### 16. Find the no. of orders placed on the basis of the payment installments that have been paid
<img width="352" height="106" alt="image" src="https://github.com/user-attachments/assets/8a43a86d-af90-43f8-955e-1acd8fd00760" />

### Result
<img width="370" height="556" alt="image" src="https://github.com/user-attachments/assets/9462d8ae-ffe9-4476-92d0-82908ac8520d" />


























