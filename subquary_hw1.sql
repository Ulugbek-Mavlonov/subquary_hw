SET search_path = my_schema, "$user", salesordersexample;
-- 1-ex
-- select customers.custfirstname, orders.orderdate from orders, customers
--  where orders.customerid=customers.customerid order by custfirstname, orderdate

-- 2-ex
-- select products.productname, vendors.vendname
-- from products
-- inner join product_vendors
-- on products.productnumber=product_vendors.productnumber
-- inner join vendors
-- on vendors.vendorid=product_vendors.vendorid
-- where products.retailprice<=100

--3-ex
--select distinct customers.custfirstname, employees.empfirstname
--from customers
--inner join orders
--on customers.customerid = orders.customerid
--inner join employees
--on orders.employeeid = employees.employeeid
--where customers.custlastname=employees.emplastname

--4-ex
--SET search_path = my_schema, "$user", entertainmentagencyexample;
--select agents.agentid, entertainers.entertainerid
--from entertainers
--inner join agents
--on agents.agtzipcode=entertainers.entzipcode

--5-ex
--SET search_path = my_schema, "$user", recipesexample;
--
---(select distinct r.recipetitle from recipes r
-- inner join recipe_ingredients ri
-- on r.recipeid=ri.recipeid
-- inner join ingredients i_n
-- on ri.ingredientid=i_n.ingredientid
-- where i_n.ingredientname='Garlic')
-- intersect
-- (select distinct r.recipetitle from recipes r
-- inner join recipe_ingredients ri
-- on r.recipeid=ri.recipeid
-- inner join ingredients i_n
-- on ri.ingredientid=i_n.ingredientid
-- where i_n.ingredientname='Beef' )

--6-ex
--select distinct r.recipetitle from recipes r
--inner join recipe_ingredients ri
--on r.recipeid=ri.recipeid
--inner join ingredients i_n
--on ri.ingredientid=i_n.ingredientid
--where i_n.ingredientname='Milk'

--1or 7-ex

--select cu.custlastname from customers cu
--where cu.customerid in (select o.customerid from orders o
--where o.ordernumber in(select od.ordernumber from order_details od
--where od.productnumber in (select pr.productnumber from products pr
--where productname ilike '%bike')))