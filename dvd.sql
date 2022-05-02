--1. Find how many payment transactions were greater than $5.00
select count(amount)
from payment
having count(amount) > 5.00

-- 2. how many actors have a name that starts with the letter P
select count(first_name)
from actor
where first_name like 'P%'

--3. How many unique districts are our customers from 

select count(distinct district)
from address

--4. Retrieve the list of names for those distinct districts from teh previous question
select distinct district
from address

--5. How many films are rated R and have replacement cost beteen $5 and $15
select count(rating), count(replacement_cost)
from film
where rating = 'R' and replacement_cost between 5 and 15


--6. How many films have the word 'Truman' somewhere in the title?
select count(title)
from film
where title like '%Truman%'

-- 7. How many payment have an amount greater than 7.99?
select count(*)
from payment 
where amount > 7.99


--8. How many actors start with the letter D and have at least 3 characters in their name? 
select count(first_name)
from actor
where first_name like 'D___%'

--9 How many category_ids do we have - give both the name of the category and the category_id? 
select name, category_id
from category

--10. show the distinct store_id from inventory in decending order
select distinct store_id 
from inventory
order by store_id asc