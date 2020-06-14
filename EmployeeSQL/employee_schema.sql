CREATE TABLE titles (
	title_id VARCHAR(30) PRIMARY KEY,
	title VARCHAR(255)
);

CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title VARCHAR(30),
	birth_date VARCHAR(30),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(30),
	hire_date VARCHAR(30),
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
	emp_no INTEGER,
	salaray INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE departments (
	dept_no VARCHAR(30) PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no INTEGER,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_emp (
	emp_no INTEGER,
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);