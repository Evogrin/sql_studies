-- Inputting data into the new column using update

UPDATE job_applied SET contact = 'Killua' WHERE job_id = 2;
UPDATE job_applied SET contact = 'Gon' WHERE job_id = 3;
UPDATE job_applied SET contact = 'Kurapika' WHERE job_id = 4;
UPDATE job_applied SET contact = 'Leorio' WHERE job_id = 5;
UPDATE job_applied SET contact = 'Hisoka' WHERE job_id = 6;
UPDATE job_applied SET contact = 'Chrollo' WHERE job_id = 7;
UPDATE job_applied SET contact = 'Illumi' WHERE job_id = 8;
UPDATE job_applied SET contact = 'Bisky' WHERE job_id = 9;
UPDATE job_applied SET contact = 'Machi' WHERE job_id = 10;
UPDATE job_applied SET contact = 'Shalnark' WHERE job_id = 11;

--Checking info added
SELECT contact
FROM job_applied