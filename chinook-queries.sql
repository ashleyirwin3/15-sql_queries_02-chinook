
-- 1- show customers (full names, customer ID, country) not in US
SELECT customer.FirstName, customer.LastName, customer.customerid, customer.country
FROM customer
WHERE country != 'USA';

-- 2- show customers only from Brazil
SELECT customer.FirstName, customer.LastName, customer.customerid, customer.country
FROM customer
WHERE country = 'Brazil';

--3- customers in from Brazil's Invoices
-- include full name, invoiceId, date of invoice, billing country
SELECT customer.FirstName, customer.LastName, customer.country, invoice.invoiceid, invoice.invoiceDate, invoice.billingCountry
FROM customer, invoice
WHERE country = 'Brazil';

-- 4- show employees who are sales agents
SELECT Employee.LastName, Employee.FirstName, Employee.title
FROM Employee
WHERE employee.title = 'Sales Support Agent';
