/*
Order Details

Find order details made by Jill and Eva.
Consider the Jill and Eva as first names of customers.
Output the order date, details and cost along with the first name.
Order records based on the customer id in ascending order.
*/




SELECT  o.order_date,
        o.order_details,
        c.first_name,
        o.total_order_cost
FROM customers c
JOIN orders o ON c.id = o.cust_id
WHERE c.first_name = 'Jill' OR c.first_name = 'Eva'
ORDER BY c.id
