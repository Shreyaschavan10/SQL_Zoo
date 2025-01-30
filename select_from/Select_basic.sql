-- Que 1
-- The example uses a WHERE clause to show the population of 'Germany'. Note that strings should be in 'single quotes';
select population from world where name = 'Germany'

-- Ques 2 
-- Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.
select name, population from world where name IN ('Sweden', 'Norway', 'Denmark')

-- show the country and the area for countries with an area between 200,000 and 250,000.
SELECT name, area
FROM world
WHERE area BETWEEN 200000
		AND 250000
