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

/* 1.Write a query that displays the order ID, account ID, and total dollar amount for all the orders, sorted first by the account
    ID (in ascending order), and then by the total dollar amount (in descending order).
   2.Now write a query that again displays order ID, account ID, and total dollar amount for each order, but this time sorted 
    first by total dollar amount (in descending order), and then by account ID (in ascending order). */

  SELECT id, account_id, total_amt_usd
  FROM orders
  ORDER BY account_id, total_amt_usd DESC;

  SELECT id, account_id, total_amt_usd
  FROM orders
  ORDER BY total_amt_usd DESC, account_id;

/* 1.Pulls the first 5 rows and all columns from the orders table that have a dollar amount of gloss_amt_usd greater than or
    equal to 1000.
   2.Pulls the first 10 rows and all columns from the orders table that have a total_amt_usd less than 500. */

  SELECT * 
  FROM orders
  WHERE gloss_amt_usd >= 1000
  LIMIT 5;

  SELECT * 
  FROM orders
  WHERE total_amt_usd <= 500
  LIMIT 10;

/* Filter the accounts table to include the company name, website, and the primary point of contact (primary_poc)
   just for the Exxon Mobil company in the accounts table. */

  SELECT name, website, primary_poc
  FROM accounts
  WHERE name = 'Exxon Mobil';
  