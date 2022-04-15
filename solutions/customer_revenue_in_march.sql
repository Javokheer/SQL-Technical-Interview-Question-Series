/*
Customer Revenue In March

Calculate the total revenue from each customer in March 2019. Include only customers who were active in March 2019. 

Output the revenue along with the customer id and sort the results based on the revenue in descending order.
*/



SELECT cust_id,
       SUM(total_order_cost)
FROM orders
WHERE  order_date::date between '2019-03-01' AND '2019-03-31'
GROUP BY 1
