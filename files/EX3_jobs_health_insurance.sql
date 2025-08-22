/*
    Write a query to find companies (include company name) that have posted jobs offering health insurance, 
    where these postings were made in the second quarter of 2023. Use date extraction to filter by quarter.
*/

SELECT 
        j.job_health_insurance AS health_insurance,
        c.name AS company_name
FROM job_postings_fact AS j
INNER JOIN company_dim AS c
    on j.company_id = c.company_id
WHERE j.job_health_insurance = true
  AND EXTRACT(YEAR FROM j.job_posted_date) = 2023
  AND EXTRACT(QUARTER FROM j.job_posted_date) = 2