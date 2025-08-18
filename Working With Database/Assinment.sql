use Assessment;

select * from country;
select * from city;
select * from customer;


select
country.id as Country,
country.country_name_eng,
city.city_name,
customer.customer_name
from country
left join city 
on country.id = city.country_id
left join customer
on city.id = customer.city_id
order by 
country asc,
country.country_name_eng,
city.city_name,
customer.customer_name;

SELECT 
    country.id AS country_id,
    country.country_name_eng AS country,
    city.city_name AS city,
    customer.customer_name AS customer
FROM country
INNER JOIN city
    ON country.id = city.country_id       -- only countries with at least one city
LEFT JOIN customer
    ON city.id = customer.city_id
ORDER BY country.country_name_eng, city.city_name, customer.customer_name;


