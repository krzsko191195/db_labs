use infs_skorzynskik;

-- zad 1

create table customer as select * from company_2025.CLIENT;
create table `order` as select * from company_2025.ORDER;
create table employee as select * from company_2025.EMPLOYEE;

select * from `order`;
select * from `order` o where o.ORDER_STATUS = 5;
select o.ORDER_ID, o.ORDER_STATUS from `order` o where o.CLIENT_ID in (1, 3, 5);


-- zad 2


select * from employee where FIRST_NAME = "Agnieszka" and pensja = 3900;
select * from employee where pensja between 5000 and 7000;
select * from customer where SHORT_NAME like "%eco%" and IS_COMPANY = 1;


-- zad 3

select * from `order` where  month(ORDER_DATE) in (6, 7);
select * from customer where TAX_IDENTIFIER is not null order by SHORT_NAME;
select * from employee order by BIRTH_DATE limit 5;

-- zad 4
select distinct FIRST_NAME from employee;
select CONCAT(FIRST_NAME, ' - ', LAST_NAME) `imie nazwisko` from employee where LAST_NAME like "Ko%";
select LAST_NAME, pensja from employee where year(DATE_OF_EMPLOYMENT) between 2010 and 2014;


-- zad 5

select pensja, round(pensja * 0.75, 2) `pensja netto`, round(pensja * 0.25, 2) podatek from employee;
select * from customer where TAX_IDENTIFIER is null;

-- zad 5.3
select SHORT_NAME from customer where SHORT_NAME like "K%" or SHORT_NAME like "%ski" order by SHORT_NAME desc;
select SHORT_NAME from customer where FULL_NAME like "K%" or FULL_NAME like "%ski" order by SHORT_NAME desc; 


-- helpers

select * from employee;
select * from customer;



























