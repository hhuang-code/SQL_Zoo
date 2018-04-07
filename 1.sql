https://sqlzoo.net/wiki/SELECT_basics

-- Q7: Find the countries that have three or more a in the name.
select name from world where name like '%a%a%a%';

-- Q8: Find the countries that have "t" as the second character.
select name from world where name like '_t%';

-- Q10: Find the countries that have exactly four characters.
select name from world where name like '____';
