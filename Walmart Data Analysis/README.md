# Project Description
## This project explores the Walmart Sales data to understand top performing branches and products, sales trend of of different products, customer behaviour. We study how sales strategies can be improved and optimized. The Data Analysis is done using MySQL.

## The major aim of thie project is to gain insight into the sales data of Walmart to understand the different factors that affect sales of the different branches.

### Feature Engineering: This will help use generate some new columns from existing ones.

1. Add a new column named time_of_day to give insight of sales in the Morning, Afternoon and Evening. This will help answer the question on which part of the day most sales are made.
2. Add a new column named day_name that contains the extracted days of the week on which the given transaction took place (Mon, Tue, Wed, Thur, Fri). This will help answer the question on which week of the day each branch is busiest.
3. Add a new column named month_name that contains the extracted months of the year on which the given transaction took place (Jan, Feb, Mar). Help determine which month of the year has the most sales and profit.

### Analysis List

1. Product Analysis

Conduct analysis on the data to understand the different product lines, the products lines performing best and the product lines that need to be improved.

2. Sales Analysis

This analysis aims to answer the question of the sales trends of product. The result of this can help use measure the effectiveness of each sales strategy the business applies and what modificatoins are needed to gain more sales.

3. Customer Analysis

This analysis aims to uncover the different customers segments, purchase trends and the profitability of each customer segment.

# Business Questions To Answer

## Generic Question

1. How many unique cities does the data have?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/067826e7-436c-45eb-9e77-d715828a1821)

Output

<img width="118" height="97" alt="image" src="https://github.com/user-attachments/assets/36386992-9e98-4891-9d75-12be5d5c2030" />

2. In which city is each branch?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/45169800-3424-44ce-a01c-66c34b6c04c7)

Output

<img width="210" height="126" alt="image" src="https://github.com/user-attachments/assets/45c95ea3-1958-4567-acf1-113bb8c807ae" />

### Product

1. How many unique product lines does the data have?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/eba54644-0361-458e-b2a8-2a6e3ad36ce8)

Output

<img width="313" height="87" alt="image" src="https://github.com/user-attachments/assets/5d341d90-1654-4d24-90cd-50451273eefa" />

2. What is the most common payment method?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/424dfd56-a6eb-4958-84e5-3e8ed60f896b)

Output

<img width="251" height="132" alt="image" src="https://github.com/user-attachments/assets/b44f86ce-ac7f-49c2-8d02-9862f98533dd" />

3. What is the most selling product line?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/0e6511e6-d5ff-4532-815c-210bbe99fab0)

Output

<img width="275" height="197" alt="image" src="https://github.com/user-attachments/assets/50c611f3-4e91-4230-9642-e2ac7d7fd26c" />

4. What is the total revenue by month?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/20f88a38-6673-42ea-8e88-84ac47099647)

Output

<img width="258" height="122" alt="image" src="https://github.com/user-attachments/assets/11b5f869-7884-4641-9617-4b5c0562e7a8" />

5. What month had the largest COGS?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/45bd54cd-e28e-4e72-9f40-59127cb320de)

Output

<img width="260" height="128" alt="image" src="https://github.com/user-attachments/assets/07f940d5-15a8-4418-bff9-0c12c01c86b7" />

6. What product line had the largest revenue?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/0313e231-447a-4514-99ce-ef83c329be53)

Output

<img width="357" height="191" alt="image" src="https://github.com/user-attachments/assets/b7e18da9-2b29-4520-82f5-45ae892c3798" />

7. What is the city with the largest revenue?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/7cfe36f7-9ed7-4436-9d74-1fa5bb54e0e3)

Output

<img width="272" height="116" alt="image" src="https://github.com/user-attachments/assets/f822dfb6-2175-4ba1-bbc8-9351a53a2733" />

8. What product line had the largest VAT?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/6bd865fb-91c9-4a33-9337-a1c506aeb69b)

Output

<img width="352" height="200" alt="image" src="https://github.com/user-attachments/assets/835a0b69-7026-4c0d-9fe1-b10162db8f98" />

9. Which branch sold more products than average product sold?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/41cedbac-9fd5-4304-8553-fbab88119926)

Output

<img width="178" height="117" alt="image" src="https://github.com/user-attachments/assets/4bb297d0-f47a-4f5d-992c-0f48ca710f0b" />

10. What is the most common product line by gender?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/1bcfc25b-2b85-47af-af67-91d7ca107502)

Output

<img width="395" height="358" alt="image" src="https://github.com/user-attachments/assets/7ab49a0f-2e18-4048-858b-7d65ad2d2f44" />

11. What is the average rating of each product line?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/13f37f77-47e5-440c-aa2e-15023aaa7867)

Output

<img width="328" height="195" alt="image" src="https://github.com/user-attachments/assets/d96026b8-ad56-4312-baf9-9405f9420e51" />

### Sales

1. Number of sales made in each time of the day per weekday

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/55aa88d8-87e2-4d01-bc93-faaafd50d2bb)

Output

<img width="262" height="132" alt="image" src="https://github.com/user-attachments/assets/2ea11a8f-196c-4b95-88c9-e88e41b0dc76" />

2. Which of the customer types brings the most revenue?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/1a5d24cc-a5ba-43cc-ac4c-6638dec8cd14)

Output

<img width="312" height="110" alt="image" src="https://github.com/user-attachments/assets/9859f7f8-7ddf-4a79-9a5a-df5ad16c714b" />

3. Which city has the largest tax percent/ VAT (**Value Added Tax**)?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/ad7963e6-88af-4f59-a8b2-39c8d04c8adc)

Output

<img width="287" height="136" alt="image" src="https://github.com/user-attachments/assets/4ab278b4-b9c6-4c85-801e-81c5c1179918" />

4. Which customer type pays the most in VAT?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/c7dc9adb-1449-42a6-82c2-59bde0a9f955)

Output

<img width="315" height="102" alt="image" src="https://github.com/user-attachments/assets/ca55a9a6-5241-46bc-9612-3468e2896d04" />

### Customer

1. How many unique customer types does the data have?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/fa4360d5-d9f6-4ed5-b04c-dd53470cac31)

Output

<img width="183" height="98" alt="image" src="https://github.com/user-attachments/assets/1b4feb13-cada-42b4-a3b5-a939397cf445" />

2. How many unique customer types does the data have?

<img width="416" height="160" alt="image" src="https://github.com/user-attachments/assets/866f64ff-6d7f-4267-bf6f-f04d2a9829e0" />

Output

<img width="183" height="92" alt="image" src="https://github.com/user-attachments/assets/7b16d590-cc14-4472-9e71-5a6c0c71aca4" />

3. How many unique payment methods does the data have?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/333abee4-c31e-4f35-a745-a005bd5fd344)

Output

<img width="197" height="115" alt="image" src="https://github.com/user-attachments/assets/32b9ad19-18bc-419f-b3ea-cae04ff5af01" />

4. What is the most common customer type?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/8d4a75a3-c92a-4c7f-abc4-be183981f724)

Output

<img width="281" height="100" alt="image" src="https://github.com/user-attachments/assets/3a493ad4-5948-4a66-b331-ae028652dd2b" />

5. Which customer type buys the most?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/c929d87a-1d45-4373-bc95-f0b1def23753)

Output

<img width="280" height="101" alt="image" src="https://github.com/user-attachments/assets/b75f13dd-46dd-4fa2-bfd5-4ded1a15e345" />

6. What is the gender of most of the customers?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/f5c1539b-15dd-416b-9317-5c6da9a9d267)

Output

<img width="240" height="100" alt="image" src="https://github.com/user-attachments/assets/dd823f52-ae63-4c3a-b9a9-ce6fb44d5a13" />

7. What is the gender distribution per branch?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/b73ff3d5-f1d2-445f-9087-b92149c25895)

Output

<img width="241" height="116" alt="image" src="https://github.com/user-attachments/assets/1fa33691-2102-4519-af81-67bba5eb4c52" />

8. Which time of the day do customers give most ratings?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/4c243116-aa59-4bb4-81ab-3d38d29d1e03)

Output

<img width="267" height="120" alt="image" src="https://github.com/user-attachments/assets/f7668914-2888-4bff-9ef6-216b9d0fd1ab" />

9. Which time of the day do customers give most ratings per branch?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/9f6daec1-c72e-4839-95b3-f610e2e6462c)

Output

<img width="282" height="122" alt="image" src="https://github.com/user-attachments/assets/b38209f8-a961-4b10-a248-51a6826ba8c6" />

10. Which day fo the week has the best avg ratings?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/9dfb3ec0-5b05-4cc2-9f72-7d3852b55d5c)

Output

<img width="262" height="226" alt="image" src="https://github.com/user-attachments/assets/ceb024e2-f050-4159-8618-253e33e1fe5d" />

11. Which day of the week has the best average ratings per branch?

![image](https://github.com/Gokul-Raman-98/SQL-Projects/assets/168402268/658371f4-e008-4278-bf05-dfa4338fed05)

Output

<img width="252" height="225" alt="image" src="https://github.com/user-attachments/assets/8acb9de5-27d7-4e6b-9e45-06eb4ec555a0" />
