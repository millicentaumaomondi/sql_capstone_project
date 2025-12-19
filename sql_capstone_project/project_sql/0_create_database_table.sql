\* 
- To run the sql, CMD + E CMD + E
- Make sure to change the file paths in the COPY commands to your local file paths
- Make sure to create the database first before running the rest of the code
- You can uncomment the CREATE DATABASE command to create the database from here if you want
- The steps to set up the database are as follows:
- Step 1 : Connect to PostgreSQL
- Step 2 : Create Database
- Step 3 : Create Tables
- Step 4 : Import Data from CSV files into Tables
*/
--create database
--CREATE A DATABASE sql_capstone_project;
-- create tables
CREATE TABLE company_dim (
    company_id INT PRIMARY KEY,
    name TEXT,
    link TEXT,
    link_google TEXT,
    thumbnail TEXT
);

-- 2. Create Skills Dimension Table
CREATE TABLE skills_dim (
    skill_id INT PRIMARY KEY,
    skills TEXT,
    type TEXT
);

-- 3. Create Job Postings Fact Table
CREATE TABLE job_postings_fact (
    job_id INT PRIMARY KEY,
    company_id INT,
    job_title_short TEXT,
    job_title TEXT,
    job_location TEXT,
    job_via TEXT,
    job_schedule_type TEXT,
    job_work_from_home BOOLEAN,
    search_location TEXT,
    job_posted_date TIMESTAMP,
    job_no_degree_mention BOOLEAN,
    job_health_insurance BOOLEAN,
    job_country TEXT,
    salary_rate TEXT,
    salary_year_avg NUMERIC,
    salary_hour_avg NUMERIC,
    FOREIGN KEY (company_id) REFERENCES company_dim (company_id)
);

-- 4. Create Skills-to-Job Mapping Table
CREATE TABLE skills_job_dim (
    job_id INT,
    skill_id INT,
    PRIMARY KEY (job_id, skill_id),
    FOREIGN KEY (job_id) REFERENCES job_postings_fact (job_id),
    FOREIGN KEY (skill_id) REFERENCES skills_dim (skill_id)
);

-- Import Data from CSV files into Tables
-- Note: Adjust file paths as necessary for your environment
-- tmp directory to make it easier for postgres to access files
COPY company_dim 
FROM '/tmp/company_dim.csv' 
WITH (FORMAT csv, HEADER true, DELIMITER ',');

-- 2. Import Skills Dimensions
COPY skills_dim 
FROM '/tmp/skills_dim.csv' 
WITH (FORMAT csv, HEADER true, DELIMITER ',');

-- 3. Import Job Postings (Large file, may take 10-30 seconds)
COPY job_postings_fact 
FROM '/tmp/job_postings_fact.csv' 
WITH (FORMAT csv, HEADER true, DELIMITER ',');

-- 4. Import Skills-to-Job Mapping
COPY skills_job_dim 
FROM '/tmp/skills_job_dim.csv' 
WITH (FORMAT csv, HEADER true, DELIMITER ',');


-- to check the current database
-- SELECT current_database(); 

-- to check data import
-- SELECT * FROM company_dim LIMIT 5;  