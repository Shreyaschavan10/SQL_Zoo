--Q1. 
-- Show the total population of the world.

SELECT SUM(population)
FROM world

-- Q2.
-- List all the continents - just once each.

select distinct(continent) from world
