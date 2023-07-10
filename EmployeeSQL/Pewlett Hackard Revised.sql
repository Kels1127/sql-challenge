CREATE TABLE Departments (
    dept_no varchar NOT NULL,
    dept_name varchar NOT NULL,
    PRIMARY KEY (dept_no)
);
SELECT * from Departments

CREATE TABLE Employees(
    emp_no int  NOT NULL,
    emp_title_id varchar  NOT NULL,
    birth_date date  NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar  NOT NULL,
    sex varchar  NOT NULL,
    hire_date date  NOT NULL,
	PRIMARY KEY (emp_no)
);
SELECT * from Employees

CREATE TABLE Dept_Emp (
    dept_no varchar  NOT NULL,
    emp_no int NOT NULL,
    from_date DATE NOT NULL,
  	to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (dept_no)
);

SELECT * from Dept_Emp

CREATE TABLE Dept_Manager (
    dept_no varchar  NOT NULL,
    emp_no int  NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no)
);
SELECT * from Dept_Manager
    
CREATE TABLE Title (
    emp_title_id varchar  NOT NULL,
    title varchar  NOT NULL,
    PRIMARY KEY (emp_title_id)
);

SELECT * from Title

CREATE TABLE Salaries (
    emp_no int  NOT NULL,
    salary int  NOT NULL,
    PRIMARY KEY (emp_no)
);

SELECT * FROM salaries;
