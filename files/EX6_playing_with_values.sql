SELECT 
    CASE
        WHEN salary_year_avg / 12 <= 3000 THEN 'low'
        WHEN salary_year_avg / 12 > 3000 AND salary_year_avg / 12 <= 5000 THEN 'medium'
        WHEN salary_year_avg / 12 > 5000 THEN 'high'
        ELSE 'not in range'
    END AS rated_income,
    COUNT(*) AS total_jobs,
    ROUND(AVG(salary_year_avg), 2) AS avg_salary_year,
    ROUND(AVG(salary_year_avg) / 12, 2) AS avg_salary_month
FROM job_postings_fact
WHERE job_title_short IN ('Data Scientist', 'Data Analyst')
GROUP BY rated_income
ORDER BY avg_salary_month DESC;
