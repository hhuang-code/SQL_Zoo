https://sqlzoo.net/wiki/SELECT_within_SELECT_Tutorial

-- Q3: List the name and continent of countries in the continents containing either Argentina or Australia. 
-- Order by name of the country.
select name, continent from world where continent in 
  (select continent from world where name in ('Argentina', 'Australia')) order by name; 
  
-- Q4: Which country has a population that is more than Canada but less than Poland? Show the name and the population.
select name, population from world where population > (select population from world where name like 'Canada') 
  and population < (select population from world where name like '');
  
-- Q5: Show the name and the population of each country in Europe. 
-- Show the population as a percentage of the population of Germany.
-- You can use the function ROUND to remove the decimal places.
-- You can use the function CONCAT to add the percentage symbol.
select name, concat(round(100 * population / (select population from world where name like 'Germany'), 0), '%') 
  from world where continent like 'Europe';
  
  -- Q6: Which countries have a GDP greater than every country in Europe? [Give the name only.]
  -- (Some countries may have NULL gdp values)
  select name from world where gdp > all(select gdp from world where continent like 'Europe' and gdp is not null);
  
  
