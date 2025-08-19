-- Altering a column name using RENAME COLUMN

ALTER TABLE job_applied
RENAME COLUMN contact TO contact_name;

-- Checking data
SELECT *
FROM job_applied

-- Altering the data type of a column

ALTER TABLE job_applied
ALTER COLUMN contact_name TYPE text;

-- Checking data alteration
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'job_applied';

