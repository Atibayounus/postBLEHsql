--single record

insert into DEPARTMENTS(name) values ('computer science');
SELECT * FROM DEPARTMENTS;

--multi record

insert into USERS( NAME ,EMAIL,ROLE,DEPARTMENT_ID ,IS_ACTIVE)
values('scooby','scooby@gmail.com' , 'admin' , 1 , true);

SELECT * FROM USERS;

--inserting records with comma separation

insert into DEPARTMENTS(id,NAME)
values(1,'comp sci'),
(2,'english'),
(3,'zoology'),
(4,'business');

SELECT * FROM DEPARTMENTS;
