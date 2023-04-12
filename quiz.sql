set search_path = my_schema, "$user",salesordersexample;

-- 1-ex
--select vendors.vendname, count(product_vendors.productnumber) from vendors
--inner join product_vendors ON product_vendors.vendorid = vendors.vendorid
--group by vendors.vendname

--2-ex

--select count(recipeclassid) from recipe_classes where recipeclassdescription='Main course'

--3-ex

--set search_path = my_schema, "$user", bowlingleagueexample;
--select bowlerlastname  from bowlers b inner join teams t
--on b.teamid = t.teamid where t.teamid between 3 and 5 and bowlerlastname like 'H%'

--4-ex

--set search_path = my_schema, "$user", recipesexample;
--select recipetitle,* from recipes where notes is null