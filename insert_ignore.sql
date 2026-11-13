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

--single rec
insert into DEPARTMENTS(name) values ('physics')
on conflict (name) do nothing;
SELECT * FROM DEPARTMENTS;

--multi rec
insert into USERS( NAME ,EMAIL,ROLE,DEPARTMENT_ID ,IS_ACTIVE)
values('scooby','scooby@gmail.com' , 'admin' , 1 , true);

SELECT * FROM USERS;

--more inserting technique

insert into DEPARTMENTS(NAME)
values('comp sci'),
('english'),
('zoology'),
('business'),
('physics')
on conflict (name) do nothing;

SELECT * FROM DEPARTMENTS;
