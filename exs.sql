--1.Listar o nome e sobrenome dos empregados e o nome do departamento que ele trabalha. Devemos 
--garantir que todos os empregados serão retornados, mesmo que haja empregados sem departamento.

--2.Listar o nome e sobrenome dos empregados, o nome do departamento que ele trabalha e o nome 
-- do cargo que ele exerce. Garantir que todos os empregados sejam retornados. 
  
  
--3.Listar o nome e sobrenome dos empregados, o nome do departamento que ele trabalha, o nome do 
--cargo que ele exerce e a cidade onde o departamento se localiza. Garantir que todos os empregados 
--sejam retornados. 
select 
    first_name,last_name,
    departments.department_name,
    jobs.job_title,
    locations.city
from employees
   full OUTER join departments on departments.department_id = employees.department_id
   full OUTER join jobs on jobs.job_id = employees.job_id
   full outer join locations on locations.location_id = departments.location_id;

--4.Listar o nome e sobrenome dos empregados, o nome do departamento que ele trabalha, o nome do 
--cargo que ele exerce, a cidade onde o departamento se localiza e o país onde essa cidade se encontra. 
--Garantir que todos os empregados sejam retornados.

select 
    first_name,last_name,
    departments.department_name,
    jobs.job_title,
    locations.city, countries.country_name
from employees
    join departments on departments.department_id = employees.department_id
    join jobs on jobs.job_id = employees.job_id
    join locations on locations.location_id = departments.location_id
    join countries on countries.country_id = locations.country_id;
--5.Listar o nome e sobrenome dos empregados, o nome do departamento que ele trabalha, o nome do 
--cargo que ele exerce, a cidade onde o departamento se localiza, o país onde essa cidade se encontra e 
--a região a qual esse país pertence. Garantir que todos os empregados sejam retornados. 

select 
    first_name,last_name,
    departments.department_name,
    jobs.job_title,
    locations.city, countries.country_name, regions.region_name
from employees
    join departments on departments.department_id = employees.department_id
    join jobs on jobs.job_id = employees.job_id
    join locations on locations.location_id = departments.location_id
    join countries on countries.country_id = locations.country_id
    join regions on regions.region_id = countries.region_id;
--6.
--7.Listar o nome de todos os departamentos e a quantidade de empregados que ele possui. 
--8.
--9.
--10.Listar o nome do cargo e a quantidade de empregados que cada cargo possui
select
    job_title, count(employees.employee_id)
from jobs 
    join employees on jobs.job_id = employees.job_id
group by jobs.job_title;


