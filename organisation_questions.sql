-- ***************************************************Questions********************************************************--

-- Q1.Get the salary of all managers.

select ed.emp_id,ed.salary
from managers m
join employees_dept ed on m.manager_id = ed.emp_id;


-- Q2.Get the department name of all employees whose salary is above 40,000.

select ed.emp_id,dp.dept_name,ed.salary
from employees_dept ed
join departments dp on ed.dept_id = dp.dept_id
where ed.salary > 40000;


-- Q3.Get the emp_id,email and department name of all employees.

select ei.emp_id,ei.email,dp.dept_name
from employees_info ei
join employees_dept ed on ei.emp_id = ed.emp_id
join departments dp on ed.dept_id = dp.dept_id;


-- Q4.Get the name of all employees and if the employee is manager,get their email as well.

select ei.firstname,t.email
from employees_info ei
left join
(select m.manager_id , ei.email
from employees_info ei
join managers m on ei.emp_id = m.manager_id) t
on ei.emp_id = t.manager_id;

                                       #========= By using CTE ========#
with cte as 
(select m.manager_id,ei.email
from managers m 
join employees_info ei on m.manager_id = ei.emp_id)                                    

select ei.firstname,cte.email
from employees_info ei
left join cte on ei.emp_id = cte.manager_id;



-- Q5.Get employees name , id , departmenet id , and salary of employees and categorize salary as 'Low'(<=25000), 
-- 'Medium'(25001 - 50000) , else 'High'.

select concat(ei.firstname,' ',ei.lastname) as name,ed.emp_id,ed.dept_id,ed.salary,
case
when ed.salary <= 25000 then "Low"
when ed.salary > 25000 and ed.salary <= 50000 then "Medium"
else "High"
end as salary_range from employees_dept ed
join employees_info ei on ei.emp_id = ed.emp_id;


-- Q6.Get the name of all employees and if the employee is in dept 203, get their salary as well.

select ei.firstname,
(select salary 
from employees_dept ed
where ei.emp_id = ed.emp_id And ed.dept_id = 203) as salary
from employees_info ei;


                                             #======== By using cte =======#
                                             
with cte as 
(select ei.emp_id,ei.firstname,ed.dept_id,ed.salary
from employees_info ei 
left join employees_dept ed on ei.emp_id = ed.emp_id)

select firstname,
case when dept_id = 203 then salary else null 
end as salary
from cte;


-- Q7.Get the name of all project leads.

select ei.firstname,pd.project_lead_id
from employees_info ei
join employees_dept ed on ei.emp_id = ed.emp_id
join project_details pd on ed.manager_id = pd.manager_id
where pd.project_lead_id = ei.emp_id;


-- Q8.Get the name of all projects whose status is completed.

select pj.*,pd.project_status
from projects pj
join project_details pd on pj.project_id = pd.project_id
where pd.project_status = 'Completed';


-- Q9.Get the count of all the project status.

select pj.project_name,t.*
from projects pj
join 
(select  distinct project_status,count(*) from project_details 
group by project_status) t;


-- Q10.Get the name of the manager,the name of the project they are associated with , status of the project and name of the client.

select concat(ei.firstname,' ',ei.lastname) as emp_name,m.manager_id,pj.project_name,pd.project_status,cl.client_name
from 
employees_info ei
join managers m on ei.emp_id = m.manager_id
join project_details pd on m.manager_id= pd.manager_id
join projects pj on pj.project_id = pd.project_id
join clients cl on cl.client_id = pd.client_id
where pd.manager_id = m.manager_id;



-- Q11.Get the name and city of the client ,managaer_id and manager name who are associated with AI integration project.

select cl.client_name,cl.client_city,pd.manager_id,pj.project_name
from clients cl
join project_details pd on cl.client_id = pd.client_id
join projects pj on pd.project_id = pj.project_id
where pj.project_name = 'AI integration';



-- Q12.Get emp_id,first name ,salary,departmenet name of all the team leads associated with the project of Data Analytics.

select ei.emp_id,ei.firstname,ed.salary,pd.project_lead_id,dp.dept_name
from employees_info ei
join employees_dept ed on ei.emp_id = ed.emp_id
join departments dp on dp.dept_id = ed.dept_id
join project_details pd on pd.project_lead_id = ei.emp_id
where dp.dept_name = 'Data Analytics';



-- Q13.Get the name of all the projects initiated in november.

select pj.project_name,pd.commencement_month
from projects pj
join project_details pd on pd.project_id = pj.project_id
where pd.commencement_month = 'November';



-- Q14.Which manager has the most projects.

select manager_id,count(project_id) as no_of_project
from project_details 
group by manager_id
order by count(project_id) desc
limit 1;

									#============== another method ===========#
                                   
                                   
select pd.manager_id,count(project_name) as no_of_project
from project_details pd
join projects pj on pd.project_id = pj.project_id
group by pd.manager_id
limit 1;



-- Q15.which project lead has the most projects.

select project_lead_id,count(project_id) no_of_project
from project_details 
group by project_lead_id
order by count(project_id) desc
limit 2;


                                         #============== another method ===========#


select pd.project_lead_id,count(pj.project_name) as no_of_project
from project_details pd
join projects pj on pd.project_id = pj.project_id
group by project_lead_id
order by count(pj.project_name) desc
limit 2;



-- Q16.Get the count and name of all projects with their project status.

select pj.project_name,pd.project_status,count(pd.project_status) as no_of_project
from project_details pd
join projects pj on pd.project_id = pj.project_id
group by pj.project_name,pd.project_status;


-- Q17.Make a store procedure for inserting the information of new employees.

delimiter $$
create procedure P_insert_emp_info(IN id int, IN firstname varchar(20), IN lastname varchar(20) , IN email varchar(30))
begin
insert into employees_info(emp_id , firstname , lastname , email)
values(id , firstname , lastname , email);

select * from employees_info
where emp_id = id;
end $$
delimiter ; 

call P_insert_emp_info(1251,'Krish','kumar','krish_kumar@someorg.com');



-- Q18.Give ranks to every employee according to their salary by using window functions.

select ei.firstname,dp.dept_name,ed.*, 
dense_rank() over(partition by dept_id order by salary desc) as rank_
from employees_dept ed
join employees_info ei on ed.emp_id = ei.emp_id
join departments dp on ed.dept_id = dp.dept_id;


