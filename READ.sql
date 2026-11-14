

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

CREATE TABLE COURSES (
	ID SERIAL PRIMARY KEY,
	TITLE VARCHAR(200) NOT NULL,
	FEE NUMERIC(8, 2) NOT NULL CHECK (FEE >= 0),
	INSTRUCTOR_ID INT REFERENCES USERS (ID) ON DELETE SET NULL,
	CREATED_AT TIMESTAMP DEFAULT NOW() -- ← add this
);
TRUNCATE TABLE USERS,courses restart identity cascade;


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
--calculating i.e adding tax 

SELECT * from courses ;
SELECT title , fee as "base fee" , fee*1.12 as "Total with tax" from courses;
