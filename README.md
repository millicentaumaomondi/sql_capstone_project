# SQL CAPSTONE README
# Introduction
This project explores top tech jobs highlighting high demand skills and top paying jobs by looking at the job market data.
## SQL Capstone — Project SQL
This repo contains the SQL scripts used for the SQL capstone project. The [scripts](project_sql/) create the database schema, load data (from CSVs present in the repository), and run analytical queries to answer business questions about job postings, skills and salary relationships.
- `0_create_database_table.sql` — DDL statements to create the database schema (dimensions and fact tables) used by the project.
- `1_top_paying_jobs.sql` — Query that finds the top paying job roles based on the dataset.
- `2_skills_for_top_paying_jobs.sql` — Identifies the skills associated with top-paying jobs.
- `3_top_demanded_skills.sql` — Lists the most in-demand skills across job postings.
- `4_top_skills_based_on_salary.sql` — Ranks skills by their association with higher salaries.
- `5_optimal_skils.sql` — (Typo preserved) A combined or final query identifying an optimal skill set (see comments in file).

Dataset
-------

The CSV files can be found [here](https://drive.google.com/drive/folders/1moeWYoUtUklJO6NJdWo9OV8zWjRn0rjN) in the `csv_files` folder:

- `company_dim.csv` — company dimension data
- `job_postings_fact.csv` — the main fact table of job postings with salary and job metadata
- `skills_dim.csv` — canonical list of skills
- `skills_job_dim.csv` — join table mapping skills to job postings


# Background
The project aims to provide insights into the job market for data analysts by analyzing job postings data. It focuses on identifying high-demand skills, top-paying job roles, and the relationships between skills and salaries. The analysis is based on a dataset of job postings, which includes information about job titles, companies, required skills, and salary ranges.

# Tools used    
- PostgreSQL: For database management and SQL querying.
- SQL: For data manipulation and analysis.
- VSCode: For code editing and version control.

# The Analysis
The analysis is structured into several SQL scripts, each addressing a specific business question:
1. **Top Paying Jobs**: Identifies the highest paying job roles in the dataset based on average salaries and highlights high paying companies.
2. **Skills for Top Paying Jobs**: Determines the skills associated with the top-paying jobs. For a DATA ANALYST role, it identifies the key skills that correlate with higher salaries, these skills include SQL, Excel, Python etc
3. **Top Demanded Skills**: Lists the most in-demand skills across all job postings.
4. **Top Skills Based on Salary**: Ranks skills based on their association with higher salaries.
5. **Optimal Skills**: Combines insights from previous analyses to identify an optimal skill set for job seekers aiming for high-paying roles.
# What I learned
- Through this project, I learned how to effectively use SQL for data analysis, including complex joins, aggregations, and filtering. 
- I also gained insights into the job market for data analysts, understanding which skills are most valued and how they relate to salary levels. 
- Additionally, I improved my ability to structure a data analysis project from data ingestion to insight generation.

# Acknowledgements
A huge thank you to Luke Barousse for creating the SQL Data Analytics YouTube course and project which this capstone is based on.