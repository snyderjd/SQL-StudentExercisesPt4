-- 3. Write a query to return all student first and last names with their cohort's name
SELECT
	s.FirstName,
	s.LastName,
	c.Name
FROM
	Student s
		LEFT JOIN Cohort c ON s.CohortId = c.Id

-- 4. Write a query to return all student first and last names with their cohort's name only for a single cohort
SELECT
	s.FirstName,
	s.LastName,
	c.Name
FROM
	Student s
		LEFT JOIN Cohort c ON s.CohortId = c.Id
WHERE
	c.Name = 'Day 34';

-- 5. Write a query to return all instructors ordered by their last name
SELECT
	FirstName,
	LastName,
	CohortId,
	Specialty,
	SlackHandle
FROM
	Instructor
ORDER BY
	LastName;

-- 6. Write a query to return a list of unique instructor specialties
SELECT DISTINCT Specialty FROM Instructor;

-- 7. Write a query to return a list of all student names along with the names of the exercises they
-- have been assigned. If an exercise has not been assigned, it should not be in the result.
-- NOTE: sometimes you need to join more than two tables in a query.

SELECT
	s.FirstName,
	s.LastName,
	e.Name as 'Exercise Name'
FROM
	Student s
		LEFT JOIN StudentExercise se ON se.StudentId = s.Id
		LEFT JOIN Exercise e ON se.ExerciseId = e.Id;

-- 8. Return a list of student names along with the count of exercises assigned to each student.
-- NOTE: SQL has a group by just like LINQ does

SELECT
	se.StudentId, s.FirstName, s.LastName, COUNT(*) as 'NumExercises'
FROM
	StudentExercise se LEFT JOIN Student s ON se.StudentId = s.Id
GROUP BY
	se.StudentId, s.FirstName, s.LastName;





