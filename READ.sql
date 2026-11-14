CREATE TABLE DEPARTMENTS (
	ID SERIAL PRIMARY KEY,
	NAME VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE USERS (
	ID SERIAL PRIMARY KEY,
	NAME VARCHAR(100) NOT NULL,
	EMAIL VARCHAR(150) UNIQUE NOT NULL,
	ROLE VARCHAR(50) NOT NULL CHECK (ROLE IN ('student', 'professor', 'admin')),
	DEPARTMENT_ID INT REFERENCES DEPARTMENTS (ID) ON DELETE SET NULL,
	METADATA JSONB,
	IS_ACTIVE BOOLEAN DEFAULT TRUE,
	CREATED_AT TIMESTAMP DEFAULT NOW()
);

--single re
insert into DEPARTMENTS(name) values ('computer science');
SELECT * FROM DEPARTMENTS;

--==READ==--

--basic select
select*	FROM users;
--condition 
select*	FROM users WHERE role = 'admin';

--selecting specific coloumns
select name, email,role FROM users;

--ALIAS ( remember the " ") and without " " cases
SELECT name AS "Full Name", email AS "Contact Information" from users;

--Distinct
SELECT DISTINCT role from users;
