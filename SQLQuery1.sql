use Shop

create table Users(
	[Id] int identity primary key,
	[FullName] nvarchar(255),
	[Email] nvarchar(255),
	[Age] int,
	[Salary] decimal
)
select * from Users

insert into Users([FullName], Email, Age, Salary)
values ('John Doe', 'doe8941@gmail.com', 39, 3650),
('Sabrina Smith', 'sm84sab@msn.com', 18, 5600),
('Erik Johnson', 'eriktow@outlook.com', 23, 4745),
('David Hansen', 'hansesnnscout@int.scc.de', 34, 5600),
('William Alexandre', 'willy.alex789@in.uk.', 27, 2456),
('Sabrina Carpenter', 'carpenter@uk.scc.ge', 34, 4745),
('Razhul Ivory', 'Razhul@gmail.com', 34, 5600)




SELECT Id from Users GROUP BY [Salary]  ORDER BY  [Age] DESC;




SELECT ID, [FullName], Email, Age, Salary 
    FROM Users 
    GROUP BY ID,[FullName], Email, Age, Salary  ORDER BY [Age] DESC;




CREATE VIEW  vw_GetAll AS 
select * from Users
Select top 100 percent Count(*) as 'Count', Salary
group by Salary, Age order by age asc
 

select * from vw_GetAll

create function dbo.getAverageAge1(@id int)
returns float
as
begin
declare @average int;
select @average = AVG ([age]) from Users where Id > @id
return @average
end

select dbo.getAverageAge1(2)
select * from Users
