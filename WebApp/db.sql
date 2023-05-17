create table employee(
empid int primary key ,
ename varchar(30),
email varchar(30),
mobno varchar(50),
passward varchar(20)
);


create table project(
projectid int primary key,
pname varchar(30),
projdesc varchar(30),
status varchar(20),
pstartdate date,
penddate date
);
create table emp_project(
empid int,
projectid int,

constraint fkeid foreign key(empid) references employee(empid),
constraint fkpid foreign key(projectid) references project(projectid)
);
 create table task(
 taskid  int primary key,
 taskname varchar(30),
 taskdesc varchar(50),
 tstatus varchar(20),
 projectid int,
 constraint fkprid foreign key(projectid) references project(projectid)
 );
create table comment(
comment varchar (20),
projectid int primary key,
 constraint fkprid foreign key(projectid) references project(projectid)
);


