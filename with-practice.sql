Of the smallest 10 countries, which has the biggest gnp? (hint: use WITH and LIMIT)
WITH  small_countries AS
(SELECT
    name,
    population,
    gnp
   FROM
    country
   ORDER BY
     population ASC
   LIMIT 10)

SELECT
  name,
  gnp
FROM
  small_countries
ORDER BY
  gnp DESC
LIMIT 1

Of the smallest 10 countries, which has the biggest per capita gnp?

WITH
  small_countries AS
  (SELECT
     name,
     gnp,
     population
   FROM
     country
   WHERE
     population > 0
   ORDER BY
     population ASC
   LIMIT
     10)

SELECT
  name,
  gnp / population AS per_capita
FROM
  small_countries
ORDER BY
  per_capita DESC
LIMIT
  1


Of the biggest 10 countries, which has the biggest gnp?

WITH
  large_countries AS
  (SELECT
     name,
     gnp,
     population
   FROM
     country
   ORDER BY
     population DESC
   LIMIT
     10)

SELECT
  name,
  gnp
FROM
  large_countries
ORDER BY
  gnp ASC
LIMIT
  1

Of the biggest 10 countries, which has the biggest per capita gnp?

WITH
  large_countries AS
  (SELECT
     name,
     gnp,
     population
   FROM
     country
   ORDER BY
     population DESC
   LIMIT
     10)

SELECT
  name,
  gnp / population AS per_capita
FROM
  large_countries
ORDER BY
  per_capita ASC
LIMIT
  1

What is the sum of surface area of the 10 biggest countries in the world? The 10 smallest?

WITH
  biggest_countries AS
  (SELECT
     name,
     surfacearea,
     population
   FROM
     country
   ORDER BY
     population DESC
   LIMIT
     10)

SELECT
  SUM(surfacearea) AS sum_surface_area
FROM
  biggest_countries
