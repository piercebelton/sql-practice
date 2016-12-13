How big are the continents in term of area and population?

SELECT
  continent,
  SUM(surfacearea) AS continent_area,
  SUM(population) AS continent_pop
FROM
  country
GROUP BY
  continent

Which region has the highest average gnp?

SELECT
  region,
  AVG(gnp) as avg_gnp
FROM
  country
GROUP BY
  region
ORDER BY
  avg_gnp DESC
LIMIT
  1

Who is the most influential head of state measured by population?

SELECT
  headofstate,
  name,
  SUM(population) AS sum_pop
FROM
  country
GROUP BY
  headofstate,
  name
ORDER BY
  sum_pop DESC
LIMIT
  1

Who is the most influential head of state measured by surface area?

SELECT
  headofstate,
  name,
  SUM(surfacearea) AS sum_area
FROM
  country
GROUP BY
  headofstate,
  name
ORDER BY
  sum_area DESC
LIMIT
  1

What are the most common forms of government? (hint: use count(*))

SELECT
  governmentform,
  count(governmentform) AS count_forms
FROM
  country
GROUP BY
  governmentform
ORDER BY
  count_forms DESC

What are the forms of government for the top ten countries by surface area?

WITH
  surface_area_top_10 AS
(SELECT
  governmentform,
  surfacearea
FROM
 country
ORDER BY
  surfacearea DESC
LIMIT
  10)

SELECT
  governmentform,
  count(governmentform) as count_form
FROM
  surface_area_top_10
GROUP BY
  governmentform
ORDER BY
  count_form DESC

What are the forms of government for the top ten richest nations? (technically most productive)

WITH
  richest_top_10 AS
(SELECT
  governmentform,
  gnp
FROM
 country
ORDER BY
  gnp DESC
LIMIT
  10)

SELECT
  governmentform,
  count(governmentform) as count_form
FROM
  richest_top_10
GROUP BY
  governmentform
ORDER BY
  count_form DESC

What are the forms of government for the top ten richest per capita nations? (technically most productive)

WITH
  richest_per_capita AS
(SELECT
  governmentform,
  gnp / population AS per_capita
FROM
 country
WHERE
  population > 0
ORDER BY
  per_capita DESC
LIMIT
  10)

SELECT
  governmentform,
  count(governmentform) as count_form
FROM
  richest_per_capita
GROUP BY
  governmentform
ORDER BY
  count_form DESC
