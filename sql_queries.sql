use sales;

-- show all customer records 
select * from customers;

-- show total number of customers
select count(*) from customers;

-- Show transactions for Chennai market (market code for chennai is Mark001
select * from transactions where market_code='Mark001';

-- Show distrinct product codes that were sold in chennai
select distinct product_code from transactions where market_code='Mark001';

-- Show transactions where currency is US dollars
select * from transactions where currency='USD';

-- Show transactions in 2020 join by date table
select transactions.*, date.* from transactions inner join date on transactions.order_date = date.date where date.year=2020;

-- Show total revenue in year 2020.
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.currency="INR\r" or transactions.currency="USD\r";

-- Show total revenue in year 2020, January Month.
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and date.month_name="January" and (transactions.currency="INR\r" or transactions.currency="USD\r");

-- Show total revenue in year 2020 in Chennai
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.market_code="Mark001";

