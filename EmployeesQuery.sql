Select * from
Portofolio_Project2.dbo.EmployeesData 



--Knowing Number of employees based on ethnicity :


Select Ethnicity , COUNT (Ethnicity) as EthnicityNumber
from Portofolio_Project2..EmployeesData
group by Ethnicity 
order by EthnicityNumber Desc

--Knowing Number of jobs in the corporation :

Select Distinct [Job Title] FROM 
Portofolio_Project2..EmployeesData 

--Selecting the employees names and giving them 15% bonus  :

select [Full Name], [Job Title],(cast 
([Annual Salary]*1.15 as char)+'$') As "salary"
FROM 
Portofolio_Project2..EmployeesData 


--Linking two coloumns into one only :

select  [Full Name] +'   '+ [Job Title] as Full_Name_Title
FROM 
Portofolio_Project2..EmployeesData

--Linking two coloumns into one only :


select  [Full Name] +' (  '+  [Job Title] + ')' as Full_Name_Title
FROM 
Portofolio_Project2..EmployeesData

--Determining the length of the names of employees excluding space between two names:
select
  LEN(REPLACE([Full Name], ' ', ''))
FROM 
Portofolio_Project2..EmployeesData

--creating new table called commision :


Alter Table Portofolio_Project2..EmployeesData
add Commision int ;
Select EEID, [Annual Salary] , commision
FROM 
Portofolio_Project2..EmployeesData

--knowing number of employees of same job title:

  select COUNT([Job Title])as NumberOf , [Job Title] 
FROM 
Portofolio_Project2..EmployeesData
Group by [Job Title]

--Selecting all info about employees before certain date :
select *
FROM 
Portofolio_Project2..EmployeesData
where [Hire Date] < '2000-1-1'

--detecting the average salary of certain Job title :
select  (sum ([Annual Salary])/COUNT(EEID) ) as AnalystsAverageAnnualSalary
FROM 
Portofolio_Project2..EmployeesData 
where [Job Title] = 'analyst'



--Selecting all info about employees hired  in a certain date :
select *
FROM 
Portofolio_Project2..EmployeesData
where [Hire Date] = '1997-11-29'

--knowing all info about a specific employee : 
Select * from
Portofolio_Project2.dbo.EmployeesData 
where [Full Name] = 'Leonardo Dixon' 


--knowing all employees whose annual salary *1.25 will exceed 300000: 
Select * from
Portofolio_Project2.dbo.EmployeesData 
where ([Annual Salary]*1.25)>300000

--knowing all employees who spent more than 30 years working for the corporation: 
Select * from
Portofolio_Project2.dbo.EmployeesData 
where( DATEdiff (YEAR,[Hire Date] ,CURRENT_TIMESTAMP))>30

--knowing all employees who daily salary > 700 $: 
Select [Full Name],([Annual Salary]/365) as "daily salary" from
Portofolio_Project2.dbo.EmployeesData 
where ([Annual Salary]/365) > 700




--knowing all employees whose salaries are odd : 
Select [Full Name], [Annual Salary] from
Portofolio_Project2.dbo.EmployeesData 
where ([Annual Salary]%2) =1



