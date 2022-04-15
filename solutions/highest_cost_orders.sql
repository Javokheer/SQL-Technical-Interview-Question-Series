/*
Highest Cost Orders

Find the customer with the highest daily total order cost between 2019-02-01 to 2019-05-01. 
If customer had more than one order on a certain day, sum the order costs on daily basis. 
Output customer's first name, total cost of their items, and the date.
 
 For simplicity, you can assume that every first name in the dataset is unique.
*/




SELECT first_name,
       date,
       total_order_cost
FROM 
    (SELECT c.first_name first_name, 
           o.order_date date,
           SUM(o.total_order_cost) total_order_cost,
          row_number() over( ORDER BY SUM(o.total_order_cost) DESC) rn
    FROM customers c
    JOIN orders o ON c.id = o.cust_id
    GROUP BY 1, 2) sub
WHERE rn = 1
