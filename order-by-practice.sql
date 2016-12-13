Which fifteen countries have the lowest life expectancy? highest life expectancy?
SELECT
  lifeexpectancy, name
FROM
  country
ORDER BY
  lifeexpectancy ASC
LIMIT
  15

SELECT
lifeexpectancy, name
FROM
  country
WHERE
  lifeexpectancy IS NOT NULL
ORDER BY
  lifeexpectancy DESC
LIMIT
  15


Which five countries have the lowest population density? highest population density?
SELECT
  name,
  population / surfacearea AS density
FROM
  country
ORDER BY
  density ASC
LIMIT
  5

SELECT
  name,
  population / surfacearea AS density
FROM
  country
ORDER BY
  density DESC
LIMIT
  5


Which is the smallest country, by area and population? the 10 smallest countries, by area and population?
SELECT
  name,
  surfacearea,
  population
FROM
  country
ORDER BY
  surfacearea ASC
LIMIT
  1

SELECT
  name,
  surfacearea,
  population
FROM
  country
ORDER BY
  population ASC
LIMIT
  1

SELECT
  name,
  surfacearea,
  population
FROM
  country
ORDER BY
  surfacearea ASC
LIMIT
  10

SELECT
  name,
  surfacearea,
  population
FROM
  country
ORDER BY
  population ASC
LIMIT
  10

Which is the biggest country, by area and population? the 10 biggest countries, by area and population?
SELECT
  name,
  surfacearea,
  population
FROM
  country
ORDER BY
  population DESC
LIMIT
  10
