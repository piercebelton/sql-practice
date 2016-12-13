What is the 3rd most common language spoken?

SELECT
  language,
  COUNT(language) AS sum_lang
FROM
  countrylanguage
GROUP BY
  language
ORDER BY
  sum_lang DESC
LIMIT
  1
OFFSET
  2

How many cities are in Chile?

SELECT
  countrycode,
  COUNT(*) AS count_cities
FROM
  city
WHERE
  countrycode IN (SELECT
                    code
                  FROM
                    country
                  WHERE
                    name = 'Chile')
GROUP BY
  countrycode

What is the total population in China?

SELECT
  countrycode,
  SUM(population) as sum_pop
FROM
  city
WHERE
  countrycode IN (SELECT
                    code
                  FROM
                    country
                  WHERE
                    name = 'China')
GROUP BY
  countrycode

How many countries are in North America?

SELECT
  continent,
  COUNT(name) AS sum_name
FROM
  country
WHERE
  continent = 'North America'
GROUP BY
  continent

Which countries gained their independence before 1963?

SELECT
  name,
  indepyear
FROM
  country
WHERE
  indepyear < 1963
ORDER BY
  indepyear ASC

What is the total population of all continents?

SELECT
  SUM(population)
FROM
  country

What is the average life expectancy for all continents?

SELECT
  AVG(lifeexpectancy)
FROM
  country

Which countries have the letter z in the name? How many?

SELECT
  COUNT(name)
FROM
  country
WHERE
  name LIKE('%z%')
  OR name LIKE('%Z%')

What is the age of Jamaica?

SELECT
  name,
  2016 - indepyear,
  indepyear
FROM
  country
WHERE
  name = 'Jamaica'

Are there any countries without an official language? Hint: WHERE ... NOT IN ( SELECT ... FROM ... WHERE ...)

SELECT
  name
FROM
  country
WHERE
  code NOT IN
(SELECT
  countrycode
FROM
  countrylanguage
WHERE
  isofficial = TRUE)
