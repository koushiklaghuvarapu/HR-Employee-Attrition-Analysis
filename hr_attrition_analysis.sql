create database hr_analysis;
use hr_analysis;
select * from hr_attrition_clean;
-- Q1 Overall attrition rate
SELECT 
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS left_company,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate
FROM hr_attrition_clean;

-- Q2 Attrition by Department
select Department,count(*) as total_employee,sum(case when Attrition='Yes' then 1 else 0 end) as left_per_department,
round(sum((case when Attrition='Yes' then 1 else 0 end))*100/count(*),2) as attrition_rate from hr_attrition_clean group by Department;

-- Q3 Average salary by Attrition
select Attrition,avg(MonthlyIncome) as avg_salary_per_month ,min(MonthlyIncome) as min_salary , max(MonthlyIncome) as max_salary from hr_attrition_clean group by Attrition;

-- Q4 Attrition by OverTime
select Overtime,count(*) as total_employee,sum(case when Attrition='Yes' then 1 else 0 end) as left_employees,
round(sum((case when Attrition='Yes' then 1 else 0 end))*100/count(*),2) as attrition_rate from hr_attrition_clean group by Overtime;


-- Q5 Top 5 Job Roles with highest attrition
select JobRole from (select JobRole,sum(case when Attrition='Yes' then 1 else 0 end) as left_employee from hr_attrition_clean group by JobRole order by left_employee desc limit 5)t;

-- Q6 Average years at company by Attrition
select Attrition,avg(TotalWorkingYears) as avg_years from hr_attrition_clean group by Attrition;


-- Q7 Attrition by Age group
select AgeGroup,sum(case when Attrition='Yes' then 1 else 0 end) as left_employee from hr_attrition_clean group by AgeGroup order by left_employee desc;

-- Q8 WorkLifeBalance vs Attrition
select WorkLifeBalance ,round(sum(case when Attrition='Yes' then 1 else 0 end)*100/count(*),2) as attrition_rate from hr_attrition_clean group by WorkLifeBalance order by attrition_rate desc;

-- Q9 Department + OverTime combination
select Department,OverTime,round(sum(case when Attrition='Yes' then 1 else 0 end)*100/count(*),2) as attrition_rate from hr_attrition_clean group by Department,OverTime order by attrition_rate desc;


-- Q10 High risk employees profile
-- (young, overtime, low salary, low satisfaction) are the criteria for that
SELECT 
    EmployeeNumber,
    Age,
    Department,
    JobRole,
    MonthlyIncome,
    OverTime,
    JobSatisfaction,
    WorkLifeBalance,
    YearsAtCompany
FROM hr_attrition_clean
WHERE Attrition = 'No'  -- still at company
AND Age < 35
AND OverTime = 'Yes'
AND MonthlyIncome < 5000
AND JobSatisfaction <= 2
ORDER BY MonthlyIncome ASC;