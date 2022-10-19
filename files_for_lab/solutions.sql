-- 1
USE bank;
SELECT client_id FROM client
WHERE district_id = 1
LIMIT 5;

-- 2 
SELECT district_id 
FROM client where district_id = 72
ORDER BY client_id
LIMIT 1;

-- 3
SELECT amount 
FROM loan 
ORDER BY amount ASC 
limit 3;  

-- 4
SELECT DISTINCT status 
FROM loan 
ORDER BY status;

-- 5 
SELECT loan_id
FROM loan 
ORDER BY payments DESC
LIMIT 1;

-- 6 
SELECT account_id, amount FROM loan 
ORDER BY account_id ASC
LIMIT 5; 

-- 7 
SELECT account_id, amount FROM loan
WHERE duration = 60
ORDER BY amount ASC;

-- 8 
SELECT DISTINCT k_symbol from bank.order ;

-- 9 
SELECT order_id from bank.order where account_id = 34; 

-- 10 
SELECT account_id from bank.order where order_id between '29540' and '29561'; 

-- 11 
select amount from bank.order where account_to = "30067122";

-- 12 
select trans_id, date, type, amount from trans where account_id= '793' order by date desc limit 10;

-- 13
select count(client_id), district_id from client where district_id < 10 
group by district_id order by district_id ASC;

-- 14
select type, count(type) as count from card group by type order by count desc; 

-- 15 
select account_id, sum(amount) from loan group by account_id order by sum(amount) DESC; 

-- 16 
select date , count(loan_id) as count from loan where date < 930907 group by date order by date desc; 

-- 17 

select date, duration, count(loan_id) 
from loan where date like ('9712%')
group by date, duration
order by date ASC , duration ASC;

-- 18
select account_id, sum(amount) as total_amount, type from trans where account_id= 396 group by type order by type;

