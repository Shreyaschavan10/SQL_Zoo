-- Q1. List each country name where the population is larger than that of 'Russia'.

SELECT name
FROM world
WHERE population > (
		SELECT population
		FROM world
		WHERE name LIKE ('Russia')


-- Q2. Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.

SELECT name
FROM world
WHERE continent = ('Europe') AND gdp / population > (
		SELECT gdp / population AS gdp_per_capita
		FROM world
		WHERE name IN ('United kingdom')
		)


-- Q3. List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.

SELECT name,
	continent
FROM world
WHERE continent IN (
		SELECT continent
		FROM world
		WHERE name IN ('Argentina', 'Australia')
		)
ORDER BY name

-- Q4. Which country has a population that is more than United Kingdom but less than Germany? Show the name and the population.

SELECT name,
	population
FROM world
WHERE population > (
		SELECT population
		FROM world
		WHERE name = 'United Kingdom'
		) AND population < (
		SELECT population
		FROM world
		WHERE name = 'Germany'
		)


-- Q5. Germany (population 80 million) has the largest population of the countries in Europe. Austria (population 8.5 million) has 11% of the population of Germany.
--Show the name and the population of each country in Europe. Show the population as a percentage of the population of Germany.

SELECT name,
	CONCAT (
		round(100 * population / (
				SELECT population
				FROM world
				WHERE name LIKE 'Germany'
				)),
		'%'
		) AS population_percent_as_to_germany
FROM world
WHERE continent = 'Europe'



--Q7. 7.
--Find the largest country (by area) in each continent, show the continent, the name and the area:

--The above example is known as a correlated or synchronized sub-query.

