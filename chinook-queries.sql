
-- show customers (full names, customer ID, country) not in US
SELECT customer.FirstName, customer.LastName, customer.country
FROM customer
WHERE country != 'USA';
