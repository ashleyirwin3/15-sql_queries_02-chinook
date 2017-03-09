
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

-- 5- show a unique list of billing countries from the invoice table
SELECT DISTINCT invoice.billingCountry
FROM invoice
-- ^ SELECT DISTINCT only one of each result if they are listed more than once

-- 6- show invoices from customers from Brazil
SELECT  customer.country, invoice.invoiceid, invoice.invoiceDate
FROM customer, invoice
WHERE country = 'Brazil';

-- 7- invoices associated with each sales support agents (include agents full name)
SELECT invoice.customerid, invoice.invoiceid, employee.firstName, employee.lastName
FROM customer
JOIN invoice
ON customer.customerid = invoice.customerid
JOIN employee
ON customer.supportRepid = employee.employeeid

-- 8- shows the invoice total, customer name, country, and sale agent name for all invoices and customers
SELECT DISTINCT customer.firstName, customer.lastName, customer.country, invoice.total, employee.firstName, employee.lastName, invoice.*
FROM customer
JOIN invoice
ON customer.customerid = invoice.customerid
JOIN employee
ON customer.supportRepid = employee.employeeid
