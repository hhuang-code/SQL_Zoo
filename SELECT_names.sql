-- https://sqlzoo.net/wiki/SELECT_names

-- Q7: Find the countries that have three or more a in the name.
select name from world where name like '%a%a%a%';

-- Q8: Find the countries that have "t" as the second character.
select name from world where name like '_t%';

-- Q10: Find the countries that have exactly four characters.
select name from world where name like '____';

-- Q12: Find the country where the capital is the country plus "City".
select name from world where capital like concat(name, ' City');
-- In Oracle, concat(name, ' City') is equal to name || ' City'

-- Q13: Find the capital and the name where the capital includes the name of the country.
select capital, name from world where locate (name, capital);

-- Q14: Find the capital and the name where the capital is an extension of name of the country.
select capital, name from world where locate(name, capital) and length(capital) > length(name);

-- For Monaco-Ville the name is Monaco and the extension is -Ville.
-- Show the name and the extension where the capital is an extension of name of the country.
select name, replace(capital, name, '') from world where locate(name, capital) and length(capital) > length(name);
