SELECT
  teachers.name AS teacher, cohorts.name AS cohort
FROM
  assistance_requests
JOIN
  students
ON
  students.id = student_id
JOIN
  cohorts
ON
  cohorts.id = cohort_id
JOIN
  teachers
ON
  teachers.id = teacher_id
WHERE
  cohorts.name = 'JUL02'
GROUP BY
  cohort, teacher
ORDER BY
  teacher;
