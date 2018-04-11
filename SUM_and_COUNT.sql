-- https://sqlzoo.net/wiki/SUM_and_COUNT

-- Q2: List all the continents - just once each.
select distinct(continent) from world;

-- Q6: For each continent show the continent and number of countries.
select continent, count(name) from world group by continent;

-- Q7: For each continent show the continent and number of countries with populations of at least 10 million.
select continent, count(name) from world where population >= 10000000 group by continent;

-- Q8: List the continents that have a total population of at least 100 million.
select continent from world group by continent having sum(population) >= 100000000;
-- when using aggregate functions, replace 'where' clause with 'having' clause
