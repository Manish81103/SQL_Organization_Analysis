
![App Screenshot](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBZEYfQXVsJnzwYFrZjo0y7MqOoIehNiKeBQ&usqp=CAU)
# Organization Database Project

## Project Overview
This project is designed to manage and organize data for an organization, covering various aspects such as employee management, departments, project assignments, client interactions, and more. The database is structured using SQL and includes several key tables to manage different parts of the organization.


## Database Structure
The database consists of the following tables:

## __1. Employees Info__

__Description:__ This table stores detailed information about each employee in the organization.

__Columns:__

__employee_id:__ A unique identifier for each employee (Primary Key).

__first name:__ The first name of the employee.

__last name:__ The last name of the employee.

__email:__ The employee's email address.

## __2.Employees Dept__
__Description:__ This table links employees to their respective departments.

__Columns:__

__employee_id:__ The unique identifier for the employee (Foreign Key referencing employee_id in the Employees_Info table).

__department_id:__ The department to which the employee belongs (Foreign Key referencing department_id in the Departments table).

__manager_id:__ Manager id of all employees which is linked to managers table.

__salary:__ Salary of each and every employee in the organization.


## __3.Managers__
__Description:__ This table contains information about the managers in the organization.

__Columns:__

__manager_id:__ A unique identifier for each manager (Primary Key).


__department_id:__ The department managed by this manager (Foreign Key referencing department_id in the Departments table).
## __4.Project_Details__
__Description:__ This table stores detailed information about each project undertaken by the organization.

__Columns:__

__project_id:__ The ID of the project (Foreign Key referencing project_id in the Projects table).

__project_detail_id:__ The ID of person who lead the whole project.

__manager_id:__ Manager id of all employees which is linked to managers table and projetc details table.

__client_id:__ The ID of the client for whom the project is being carried out (Foreign Key 
referencing client_id in the Clients table).

__commencement_month:__ The start month of the project.

__project_status:__ The current status of the project (e.g.,completed , Initiated , Handed Over , Approval , Stalled , Review).
## __5.Projects__
__Description:__ This table tracks all projects within the organization.

__Columns:__

__project_id:__ A unique identifier for each project (Primary Key).

__project_name:__ The name of the project.


## __6.Clients__
__Description:__ This table holds information about the clients the organization works with.

__Columns:__

__client_id:__ A unique identifier for each client (Primary Key).

__client_name:__ The name of the client.

__client_city:__ The physical address of the client.
## 7.Departments
__Description:__ This table contains data about the different departments within the organization.

__Columns:__

__department_id:__ A unique identifier for each department (Primary Key).

__department_name:__ The name of the department.
## Requirements

i. SQL Database Management System (MySQL, PostgreSQL, SQL Server, etc.)

ii. Basic understanding of SQL syntax, group by functions , joins and database management

iii. Access to the music store database schema and data.

![App Screenshot](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwINgdlnnZ_9DOVWXWmZO_ResG-FzfJKvdGg&usqp=CAU)
##  How to Run the Project
__1. Database Setup:__ Ensure that the organization database is properly set up in your SQL environment. Import the database schema and data if necessary.

__2. SQL Execution:__ Use any SQL query tool (e.g., MySQL Workbench, SQL Server Management Studio) to run the SQL queries provided in this project.

__3. Review Results:__ Analyze the output of the queries to derive insights. The results can be exported to CSV files for further analysis if needed.

![App Screenshot](https://img-c.udemycdn.com/course/240x135/2991178_1127_4.jpg)

## Usage
This database can be used for:

i. Managing employee information and their department assignments.

ii. Tracking projects and their details.

iii. Organizing client information.

iv. Monitoring departmental structures and management.


##  Conclusion
The Organization Database Project in SQL provides a comprehensive framework for managing the various aspects of an organization's operations. By structuring the data into well-defined tables such as Employees_Info, Departments, Projects, and Clients, this project facilitates efficient data management, enabling the organization to streamline processes and improve decision-making.

As the organization evolves, this database can be expanded and adapted to meet new requirements, demonstrating the flexibility and scalability of SQL-based solutions. Overall, this project lays a solid foundation for effective data management and serves as a model for similar organizational needs.

![App Screenshot](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHA1zCmDhl3lReUO57ooDIDmAqV-Kuhgfxsg&usqp=CAU)
