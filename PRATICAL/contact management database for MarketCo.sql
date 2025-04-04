use company ;
/*
create table company
(
company_ID int primary key ,
company_name varchar(20),
street varchar(20),
city varchar(20),
state varchar (20),
zip varchar (20)
);


SELECT * FROM company INNER JOIN contact ON company.company_ID = contact.company_ID ;
 
*/


/*

create table contact
(
contactid int primary key,
firstname varchar(20),
lastname varchar(20),
email varchar(30),
phone varchar(20),
company_ID int,
foreign key (company_ID) references company(company_ID)
);
   SELECT * FROM company INNER JOIN contact ON company.company_ID = contact.company_ID ;
 
*/
/*
create table contactemployee
(
contactemployeeid int primary key,
contactid int,
employeid int,
contactDate date,
descriptions varchar(100),
foreign key (contactid) references contact(contactid )
)
;
select * from contactemployee ;

select*from contact inner join contactemployee  on contact.contactid =contactemployee.contactid ;

*/



create table employees
(
employeid int primary key,
salary int,
hiredate date,
jobtitle varchar(30),
firstname varchar(20),
lastname varchar(20),
email varchar(30),
phone varchar(20),
foreign key (employeid) references contactemployee(contactid)
) ;
select * from employees ;

select*from contactemployee inner join  employees on contactemployee.contactid = employees.employeid ;

UPDATE Employees
SET Phone = '215-555-8800'
WHERE FirstName = 'Lasley' AND LastName = 'Bland';


UPDATE Company
SET companyname = 'Urban Outfitters'
WHERE companyname = 'Urban Outfitters, Inc.';


 Delete from contact where firstname="Dianne " and lastname="Connor";


select firstname ,lastname from company inner join  contact on company.companyid=contact.cmpid where companyname = 'toll brothers'; 



