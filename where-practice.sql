What is the population of the US? (starts with 2, ends with 000)

SELECT
  population
FROM
  country
WHERE
  code = 'USA'


What is the area of the US? (starts with 9, ends with million square miles)

SELECT
  surfacearea
FROM
  country
WHERE
  code = 'USA'

List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (all 37 of them)

SELECT
  COUNT(population)
FROM
  country
WHERE
  continent = 'Africa' AND
  population < 30000000 AND
  lifeexpectancy > 45
Which countries are something like a republic? (are there 122 or 143 countries or ?)
SELECT
  COUNT(name)
FROM
  country
WHERE
  governmentform LIKE '%Republic%'

Which countries are some kind of republic and acheived independence after 1945?
SELECT
  name, indepyear
FROM
  country
WHERE
  governmentform LIKE '%Republic%' AND
  indepyear > 1945
ORDER BY indepyear ASC

Which countries acheived independence after 1945 and are not some kind of republic?

SELECT
  DISTINCT governmentform
FROM
  country
WHERE
  indepyear > 1945 AND NOT
  governmentform LIKE '%Republic%'
ORDER BY governmentform ASC
