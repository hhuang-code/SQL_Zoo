https://sqlzoo.net/wiki/SELECT_from_WORLD_Tutorial

-- Q8: Exclusive OR (XOR). 
-- Show the countries that are big by area or big by population but not both. Show name, population and area.
select name, population, area from world 
  where (area > 3000000 and population <= 250000000) or (area <= 3000000 and population > 250000000);
  
select name, population, area from world
  where (area > 3000000 or population > 250000000) and not(area > 3000000 and population > 250000000);
  
-- Q9: Show the name and population in millions and the GDP in billions for the countries of the continent 'South America'. 
select name, round(population / 1000000, 2), round(gdp / 1000000000, 2) from world where continent like 'South America';

-- Q10: Show the name and per-capita GDP for those countries with a GDP of at least one trillion (1000000000000; that is 12 zeros). 
-- Round this value to the nearest 1000.
select name, round(gdp / population, -3) from world where gdp >= 1000000000000;

-- Q11: Show the name and capital where the name and the capital have the same number of characters.
select name, capital from world where length(name) = length(capital);

-- Q12: Show the name and the capital where the first letters of each match. 
-- Don't include countries where the name and the capital are the same word.
select name, capital from world where left(name, 1) = left(capital, 1) and name <> capital;

-- Q13: Find the country that has all the vowels (a, e, i, o, u) and no spaces in its name.
select name from world where name like '%a%' and name like '%e%' and name like '%i%' and name like '%o%' and name like '%u%' 
  and name not like '% %';
