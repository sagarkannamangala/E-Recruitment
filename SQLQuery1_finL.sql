/* database tables and entries for the sw512 project - team 2*/

--uncomment the below section for first run
/*
if db_id('erecr') is not null
drop database erec
go

create database erecr
go*/

use erecr 
go

drop table skill
go

create table skill
(
skillid int primary key identity not null,
skilltxt char(30) not null);

insert into skill values('PHP');
insert into skill values('SQL Server');
insert into skill values('MySQL');
insert into skill values('SAP');
insert into skill values('ASP.NET');
insert into skill values('C#');
insert into skill values('Java');
insert into skill values('HTML5');
insert into skill values('CSS');
insert into skill values('ERP');
insert into skill values('CRM');
insert into skill values('SalesForce');
insert into skill values('ADO.NET');
insert into skill values('XML');
insert into skill values('Android Programming');
insert into skill values('Oracle DB');
insert into skill values('XAML');
insert into skill values('Chocolates');

--select * from skill;
------
drop table companies
go

create table companies
(companyid int not null primary key identity,
companyname char(40) not null);

insert into companies values('MS Corporation');
insert into companies values('ABC Software Inc.');
insert into companies values('WalTech LLC');
insert into companies values('Tata Labs');
insert into companies values('MNC Consulting');
insert into companies values('Gemini Corporation');
insert into companies values('Data Processor Limited');

--select * from companies;
------

drop table candidate
go

create table candidate
( 
candidateid int not null identity,
firstname char(30),
lastname char(40),
education char(50),
university char(40),
workex int,
prevorg1 char(100),
prevorg2 char(100),
skill1 char(40),
skill2 char(40),
skill3 char(40),
skill4 char(40),
project1 char(100),
project2 char(100),
constraint PK_candidate PRIMARY KEY CLUSTERED(candidateid)
);

insert into candidate
( firstname, lastname, education, university, workex, prevorg1, prevorg2, skill1, skill2, skill3, skill4, project1, project2) 
values
('Kate','Hilton','MS in Software Engineering','Fairfield University','20','1',null,'1',null,null,null,null,null);
insert into candidate
(firstname, lastname, education, university, workex, prevorg1, prevorg2, skill1, skill2, skill3, skill4, project1, project2) 
values
('Divya','Kamath','MS in Software Engineering','Fairfield University','20','1',null,'1',null,null,null,null,null);
insert into candidate
(firstname, lastname, education, university, workex, prevorg1, prevorg2, skill1, skill2, skill3, skill4, project1, project2) 
values
('Meg','Ryan','MS in Software Engineering','Fairfield University','20','1',null,'1',null,null,null,null,null);
select * from candidate;

------
drop table hrinfo
go

create table hrinfo(
hrid int not null identity,
companyid int references companies(companyid),
emailid char(100),
phone int,
pref_method char(10) default 'email',
constraint PK_hr PRIMARY KEY CLUSTERED(hrid, companyid)
);

insert into hrinfo values('1','a@a.com','999999999', 'email');
--select * from hrinfo;
------
drop table jobs
go

create table jobs(
jobid int not null identity,
companyname char(1000),
dateuploaded datetime,
skilltxt1 char(100),
skilltxt2 char(100),
jobtxt char(50) not null,
jobdescr char(1000),
constraint PK_job PRIMARY KEY Clustered(jobid)
);

insert into jobs values ('MS Corporation', getdate(), 'PHP', 'CSS','Web Developer', 'Good Knowledge of Front-end development');
insert into jobs values ('ABC Software Inc', getdate(), 'Java', 'CSS','Web Developer', 'Good Knowledge of Front-end development');
insert into jobs values ('MNC Consulting', getdate(), 'SQL', 'SAP','ERP Developer', 'Good Knowledge of RDBMS');
insert into jobs values ('Gemini Corporation', getdate(), 'SalesForce', 'CRM','CRM Developer', 'Good Knowledge of ERP');

--select * from jobs;

------
drop table application
go

create table application(
applicid int not null identity,
companyid int references companies(companyid),
jobid int,
candidateid int,

constraint FK_job foreign key (jobid) references jobs(jobid),
constraint FK_candidate foreign key (candidateid) references candidate(candidateid),
constraint pk_application primary key (applicid, companyid, jobid, candidateid)
);




insert into application values('1','1','1');
--select * from application;
-----

drop table profile
go

create table profile
( profileid int not null identity,
candidateid int,
dob datetime,
constraint FK_profile foreign key (candidateid) references candidate(candidateid),
emailid char(100),
phone int,
pref_method char(10) default 'email',
constraint PK_profile PRIMARY KEY CLUSTERED(profileid, candidateid)
);
insert into profile values('1',  'c@c.com', '888888888', 'email');
--select * from profile;

drop table reviews
go

create table reviews(
id int identity not null primary key,
companyname char(40), 
reviews char(100)
);

Insert into reviews values('Tata Sons', 'Great Place to Work, employee satisfaction is immense');
Insert into reviews values('Microsoft', 'Great Place to Work, employee satisfaction is immense');
Insert into reviews values('Microsoft', 'Great Place to Work, employee satisfaction is immense');