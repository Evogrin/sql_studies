SELECT
    job_title_short AS title,
    job_location AS location,
    job_posted_date:: DATE AS date,
    EXTRACT(MONTH FROM job_posted_date) AS month,
    EXTRACT(YEAR FROM job_posted_date) AS year
FROM
    job_postings_fact
LIMIT 10