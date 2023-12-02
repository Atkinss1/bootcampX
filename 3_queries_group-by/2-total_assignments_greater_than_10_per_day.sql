SELECT
  day, COUNT(chapter) AS "total assignments"
FROM
  assignments
GROUP BY
  day
HAVING
  COUNT(chapter) >= 10
ORDER BY
  day;