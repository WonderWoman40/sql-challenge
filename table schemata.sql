--DATA ENGINEERING

CREATE TABLE departments (dept_no VARCHAR(10) NOT NULL,
    dept_name VARCHAR(40) NOT NULL,
    PRIMARY KEY (dept_no)
);

SELECT * from departments;

CREATE TABLE Titles (title_id VARCHAR(10) NOT NULL,
    title VARCHAR(40) NOT NULL
);
SELECT * from Titles;

CREATE TABLE Employees (
    emp_no INT NOT NULL,
    emp_title VARCHAR(255) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no)
);
SELECT * from Employees;


CREATE TABLE dept_emp (emp_no INT NOT NULL,
    dept_no VARCHAR(10) NOT NULL
);

SELECT * from dept_emp;

CREATE TABLE Dept_Manager (dept_no VARCHAR(10) NOT NULL,
    emp_no INT NOT NULL
);

SELECT * from Dept_Manager;

CREATE TABLE Salaries (emp_no INT   NOT NULL,
    salary INT NOT NULL
);

SELECT * from Salaries;
ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employee" ("emp_no");

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employee" ("emp_no");

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employee" ("emp_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employee" ("emp_no");


