SELECT employees.FirstName,employees.LastName, invoices.Total
FROM employees
JOIN customers ON employees.EmployeeId = customers.SupportRepId
JOIN invoices ON customers.CustomerId = invoices.CustomerId
WHERE invoices.InvoiceDate BETWEEN '2010-01-01' AND '2010-12-31'
GROUP BY employees.EmployeeId
ORDER BY Total DESC;