use sales;
select paymentDate, 
sum(amount) as totalAmount from payments group by paymentDate order by paymentDate desc limit 5;

select customerName, country, 
avg(creditLimit) as average from customers group by customerName, 
country;

SELECT productCode, quantityOrdered, 
SUM(priceEach * quantityOrdered) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

SELECT checkNumber, 
MAX(amount) AS highest_amount FROM payments
GROUP BY checkNumber;
