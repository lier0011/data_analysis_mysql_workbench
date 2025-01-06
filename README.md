# data_analysis_mysql_workbench

## INTRO

I just copied some of the important information from the coursera project page.
In this project, you will step into the shoes of an entry-level data analyst at
the fictional Mint Classics Company, helping to analyze data in a relational database with the goal of supporting 
inventory-related business decisions that lead to the closure of a storage facility.

## DESCRIPTION

Project Objectives:
1. Explore products currently in inventory.
2. Determine important factors that may influence inventory reorganization/reduction.
3. Provide analytic insights and data-driven recommendations.

Link to coursera project: https://www.coursera.org/projects/showcase-analyze-data-model-car-database-mysql-workbench

## APPROACH
1. Check how many products are available, just to have a good feeling of the inventory.
   ![image](https://github.com/user-attachments/assets/2a330682-6a4d-4a2a-a21e-9b98b8c43b64)
2. Check how many products are never sold. In this case, there is only one product. For this moment, we are not going to take action and just move on to the next step.
   ![image](https://github.com/user-attachments/assets/88656ca1-cc43-498e-874a-035b88a04e33)
3. Check the stock availability of each product. I found out that more than 68% of them have the capacity of 3k or more in stock.
   ![image](https://github.com/user-attachments/assets/c348a773-138e-4e5a-9b13-955699ebda45)
4. Overview of ordered products each year. The max amount of sold product per year is only about 800 items. So the problem here is overcapacity.
   ![image](https://github.com/user-attachments/assets/2cd76cf0-9c6c-4573-bf74-693f5ce1d934)
5. Determine the current warehouse capacity vs current items in stock. Without knowing the detail, I assume one of the warehouse could be closed down after reducing the stock level of the product with overcapacity. 
   ![image](https://github.com/user-attachments/assets/501217f5-3ce1-48b2-8d51-ace8c59af95e)
6. List of possible overcapacity of products with over 3k in stock.  
   ![image](https://github.com/user-attachments/assets/abec48ae-a66f-4609-a82c-b6c3320e9744)
There are 75 affected products in total, where the company could reduce the stock level by at least 50%. It consists of:
* 19 products in warehouse a
* 30 products in warehouse b
* 16 products in warehouse c
* 10 products in warehouse d 
