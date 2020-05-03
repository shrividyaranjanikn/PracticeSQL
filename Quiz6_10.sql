/* 1.Create a column that divides the standard_amt_usd by the standard_qty to find the unit price for standard paper for each 
     order. Limit the results to the first 10 orders, and include the id and account_id fields.
   2.Write a query that finds the percentage of revenue that comes from poster paper for each order. You will need to use only 
     the columns that end with _usd. (Try to do this without using the total column.) Display the id and account_id fields also. */

  SELECT id, account_id, (standard_amt_usd/standard_qty) AS unit_price
  FROM orders
  LIMIT 10;

  SELECT id, account_id, poster_amt_usd/(standard_amt_usd + gloss_amt_usd + poster_amt_usd) AS post_per
  FROM orders
  LIMIT 10;

/* 1.All the companies whose names start with 'C'.
   2.All companies whose names contain the string 'one' somewhere in the name.
   3.All companies whose names end with 's'.*/

  SELECT name
  FROM accounts
  WHERE name LIKE 'C%' ;

  SELECT name
  FROM accounts
  WHERE name LIKE '%one%' ;

  SELECT name
  FROM accounts
  WHERE name LIKE '%s';

/* 1.Use the accounts table to find the account name, primary_poc, and sales_rep_id for Walmart, Target, and Nordstrom.
   2.Use the web_events table to find all information regarding individuals who were contacted via the channel of organic 
     or adwords. */

  SELECT name, primary_poc, sales_rep_id
  FROM accounts
  WHERE name IN ('Walmart', 'Target', 'Nordstrom');

  SELECT *
  FROM web_events
  WHERE channel IN ('organic', 'adwords');

/* 1.Use the accounts table to find the account name, primary poc, and sales rep id for all stores except Walmart, Target, 
     and Nordstrom.
   2.Use the web_events table to find all information regarding individuals who were contacted via any method except using 
     organic or adwords methods. 
   3.All the companies whose names do not start with 'C'.
   4.All companies whose names do not contain the string 'one' somewhere in the name.
   5.All companies whose names do not end with 's'. */

  SELECT name, primary_poc, sales_rep_id
  FROM accounts
  WHERE name NOT IN ('Walmart', 'Target', 'Nordstrom');

  SELECT *
  FROM web_events
  WHERE channel NOT IN ('organic', 'adwords');

  SELECT name 
  FROM accounts
  WHERE name NOT LIKE 'C%';

  SELECT name 
  FROM accounts
  WHERE name NOT LIKE '%one%';

  SELECT name
  FROM accounts
  WHERE name NOT LIKE '%s';


/* 1.Write a query that returns all the orders where the standard_qty is over 1000, the poster_qty is 0, and the gloss_qty is 0.
   2.Using the accounts table, find all the companies whose names do not start with 'C' and end with 's'.
   3.When you use the BETWEEN operator in SQL, do the results include the values of your endpoints, or not? 
    Figure out the answer to this important question by writing a query that displays the order date and gloss_qty 
    data for all orders where gloss_qty is between 24 and 29. Then look at your output to see if the BETWEEN operator
    included the begin and end values or not.
   4.Use the web_events table to find all information regarding individuals who were contacted via the organic or 
     adwords channels, and started their account at any point in 2016, sorted from newest to oldest. */

  SELECT * 
  FROM orders
  WHERE standard_qty > 1000 AND poster_qty = 0 AND gloss_qty = 0;

  SELECT *
  FROM accounts
  WHERE name NOT LIKE 'C%' AND name LIKE '%s';

  SELECT * 
  FROM orders
  WHERE gloss_qty BETWEEN 24 AND 29;

  SELECT *
  FROM web_events
  WHERE channel IN ('organic','adwords') AND occurred_at BETWEEN '2016-01-01' AND '2017-01-01'
  ORDER BY occurred_at DESC;






