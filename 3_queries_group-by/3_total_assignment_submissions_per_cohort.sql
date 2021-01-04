SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;

-- My original code, which also gave the correct output
-- SELECT cohorts.name AS cohort, count(assignment_submissions.*) AS total_submissions
-- FROM cohorts
-- JOIN students ON cohorts.id = cohort_id
-- JOIN assignment_submissions ON students.id = student_id
-- GROUP BY cohorts.name
-- ORDER By count(assignment_submissions.*) DESC;