/* Try using LIMIT yourself below by writing a query that displays all the data in the occurred_at, account_id,
   and channel columns of the web_events table, and limits the output to only the first 15 rows.*/

  SELECT occurred_at, account_id, channel
  FROM web_events
  LIMIT 15;

/* 1.Write a query to return the 10 earliest orders in the orders table. Include the id, occurred_at, and total_amt_usd.
   2.Write a query to return the top 5 orders in terms of largest total_amt_usd. Include the id, account_id, and total_amt_usd.
   3.Write a query to return the lowest 20 orders in terms of smallest total_amt_usd. Include the id, account_id, and 
     total_amt_usd.*/

  SELECT id, occurred_at, total_amt_usd
  FROM orders
  LIMIT 10;

  SELECT total_amt_usd, id, account_id
  FROM orders
  ORDER BY total_amt_usd DESC
  LIMIT 5;

  SELECT id, account_id, total_amt_usd
  FROM orders
  ORDER BY total_amt_usd 
  LIMIT 20;

