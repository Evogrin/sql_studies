--Altering table to add a column

ALTER TABLE job_applied
ADD contact VARCHAR(50)

--Checking if the column where added
SELECT contact
FROM job_applied;

