create table users 
(
userid int primary key ,
username nvarchar(20),
userpass nvarchar(max),
email nvarchar(50),
userrole nvarchar(20) check( userrole in ('maneger' , 'user'))
)

insert into users values (1,'sheka','123','sheka@sheka.com','user'),(2,'shekaa', '321','shekaa@shekaa.com','maneger')

create table tasks 
(
taskid int primary key,
userid int foreign key (userid) references users (userid),
tasktitle nvarchar(50),
taskdes nvarchar(50),
taskstat nvarchar(50) check( taskstat in ('in progres' , 'pending' , 'completed')),
duedate datetime ,
)

insert into tasks values
(1 , 1 ,'writer' , 'write code' , 'in progres','02-02-2009'),
(2 , 1 ,'reader' , 'read code' , 'pending','03-02-2009'),
(3 , 1 ,'tester' , 'test code' , 'completed','04-02-2009')

select * from tasks