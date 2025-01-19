-- Que 1
-- The example uses a WHERE clause to show the population of 'Germany'. Note that strings should be in 'single quotes';
select population from world where name = 'Germany'

-- Ques 2 
-- Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.
select name, population from world where name IN ('Sweden', 'Norway', 'Denmark')
