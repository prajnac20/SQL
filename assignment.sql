-- 1. List all the products
SELECT * FROM PRODUCT;

-- 2. List product name and product price
SELECT 
    productname, price
FROM
    product;
-- 3. List all customers
SELECT * FROM customer;



-- 4. List Customername and mobile no
select Customername, mobileno from customer;



-- 5. List all orders
select * from orderd;



-- 6. List customer id and orderd date
select customerid,orderdate from orderd;



-- 7. List all the order item
select * from orderitem;



-- 8. List all the product with product id 100
select * from product where pid = 100;



-- 9. List all the info of product with name Vivo V3
select * from product where productname = 'Galaxy Grand';



-- 10. List pid, productname, price of the phone named "Samsung GalaxyNote-4"
select pid,productname,price from product where productname ='Galaxy Grand' and companyid=(select companyid from company where companyname='Samsung');



-- 11. Print product info for all the product with category id 2003

select * from product where categoryid = 10002;


-- 12. List all the customers address with city as 'Bangalore'
select * from customer c,customeraddress ca where c.customerid = ca.customerid and ca.city = 'Bangalore';



-- 13. List all the orders which was ordered on '2013-02-02'
select * from orderd where orderdate = '2013-02-02';



-- 14. Print all the orders of the customer with id 1
select * from orderd where customerid = 1;




-- 15. List all the product with company id 1001 or 1002
select * from product where companyid = 1001 or companyid = 1002;



-- 16. List all the product with price more than 30000
select * from product where price> 30000;



-- 17. List all the products of the category id 2001 or 2003 with
-- the price more than 30000
select * from product where (categoryid = 2001 or categoryid =  2003) and price>30000;



-- 18. List all the order customer id 1 or 4 ordered on '2013-02-02'
-- or '2013-02-07'
select * from orderd where (customerid=1 or customerid = 4 ) and (orderdate = '2013-02-02' or '2013-02-07');


-- 19. List all the customer whos name starts with character 'A'
select * from customer where customername like 'A%';



-- 20. List all the customer who name ends with character 'i'
select * from customer where customername like '%i';




-- 21. List all the customer whos name starts with 'R' and ends with 'i'
select * from customer where customername like 'R%i';



-- 22. List all the orders for the year 2013
select * from orderd where orderdate like '2013%';



-- 23. List all the products which are not from the category 10001
select * from product where categoryid not in (10001);



-- 24. List all the products which are not from the category 10001
-- or 10003 with the price more than 30000 and product name starts
-- with '6'
select * from product where categoryid not in (10001,10003) and productname like '6%';



-- 25. List all the customers whos mobile no doesnt start with 9
select * from customer where mobileno not like '9%';




-- 26. List all the nokia phones
select * from product where companyid in (select companyid from company where companyname = 'Nokia');



-- 27. List all the samsung phones
select * from product where companyid in (select companyid from company where companyname = 'Samsung');



-- 28. List all the iphone phones
select * from product where companyid in (select companyid from company where companyname = 'iPhone');




-- 29. List all the customers from Bangalore
select * from customer c,customeraddress ca where c.customerid = ca.customerid and ca.city = 'Bangalore';


-- 30. List all the customers who are not from Bangalore
select * from customer c,customeraddress ca where c.customerid = ca.customerid and ca.city not like 'Bangalore';



-- 31. List all the customer who have orderd on the date '2013-02-02'
select * from customer c inner join orderd o on o.customerid = c.customerid having o.orderdate = '2013-02-03';



-- 32. List all the customer who have orderd for phone '6S'
select distinct(c.customername),c.customerid from customer c inner join 
orderd o on c.customerid = o.customerid 
inner join orderitem oi on oi.orderid=o.orderid 
having oi.pid = (select pid from product where productname = '6S');



-- 33. List all the customers who have ordered for Apple 4s from bangalore
select * from customer c inner join customeraddress ca
on ca.customerid = c.customerid inner join
orderd o on c.customerid = o.customerid
inner join orderitem oi on o.orderid = oi.orderid
having oi.pid = (select pid from product where productname='4S') and ca.city = 'Bangalore' ;



-- 34. List all the phones which Goutham orderd for
select * from orderd o  inner join orderitem oi 
on o.orderid = oi.orderid inner join product p




-- 35. List all the phones which Amrutha orderd for in the 2014




-- 36. List all the customer who have not bought any product




-- 37. List Fav phones of Bangalorean



-- 38. List all the products which were sold in the year 2013



-- 39. List all the Nokia phones orderd by 'Ravi'



-- 40. List all the phones with its company name



-- 41. List companyid, companyname, productname, product price of all products



-- 42. List customer name, stname and city of all the customer.



-- 43. List customer name and customer city of all the customer
-- who have never bought any product



-- 44. List Customer id, customer name, orderdate, of all the orders



-- 45. List Customer id, customer name, orderdate, company and
-- product name with qty, price of all the orders



-- 46. List Customer id, customer name, orderdate, company and
-- product name with qty, price and amount of all the orders
-- where amount is qty*price



/* 47. List Customer id, customer name, orderdate, company and
product name with qty, price and amount of all the orders
where amount > 50,000 (amount is qty*price) */




/* 48. List customerid, customername, city, companyname, productname,
qty, price and amount of all the products orderd */




/* 49. List all product, company, customer and
customer address details for all orders
which were ordered in the year 2014
*/




/* 50. Update amount of order item */



/* 51. Get the total sales based on orderid */



/* 52. Get the total sales based on given month */



/* 53. Get the total sales based on year */



/* 54. Get the total sales based on month and year */



/* 55. Total sales based on product */



/* 56. Total sales based on company */



/* 57. Display top 3 sold mobiles */



/* 58. Top 3 customers based on billing amount */



/* 59. Top 3rd customer based on billing amount */



/* 60. Display all unique phones which are sold */



/* 61. Display all phones which are sold with the no. of quantity */



/* 62. Name of the top priced phone */

