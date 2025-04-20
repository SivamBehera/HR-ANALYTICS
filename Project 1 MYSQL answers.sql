SELECT * FROM HR_1;
SELECT * FROM hr_2;



-- KPI 1 ( Average attrition rate for all department)---
select Department, concat(format(avg(ar)*100,2),"%") as Attrition_rate
 from hr_1
 group by 1;

-- KPI 2 (Average Hourly rate of Male Research Scientist)
SELECT jobrole, gender, concat(format(avg(hourlyrate),2),"$") as Average_hourlyRate
from hr_1
where jobrole= "Research Scientist" and Gender= "male"
group by 1,2;

-- KPI 3(Attrition rate Vs Monthly income stats)
select Department, concat(format(avg(ar)*100,2),"%") Average_attritionRate, format(avg(monthlyincome),0) Average_MonnthlyIncome
 from hr_1 a inner join hr_2 b on a.EmployeeNumber = b.Employeeid
group by Department;

-- KPI 4 (Average working years for each Department)
SELECT Department, format(avg(totalworkingyears),2) Average_workingyears from hr_1 a inner join hr_2 b on a.EmployeeNumber = b.employeeid
group by department;

-- KPI 5 (Job Role Vs Work life balance)
SELECT jobrole, format(avg(worklifebalance),1) Average_worklifebalance 
from hr_1 a inner join hr_2 b on a.EmployeeNumber = b.employeeid
group by jobrole;

-- KPI 6 ( Attrition rate Vs Year since last promotion relation)
select Department, format(avg(ar)*100,2) Average_attritionRate, format(avg(YearsSinceLastPromotion),1) since_Last_promotion
 from hr_1 a inner join hr_2 b on a.EmployeeNumber = b.employeeid
 group by department;


