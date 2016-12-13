Which countries are in the top 5% in terms of area?
(hint: use a SELECT in a LIMIT clause)

SELECT
  name,
  surfacearea
FROM
  country
ORDER BY
  surfacearea DESC
LIMIT
  (SELECT
     (COUNT(*) * .05) AS top_5_perc
   FROM
     country)

When is the database from?
