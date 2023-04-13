SELECT employees.FirstName, employees.LastName, invoices.InvoiceId, invoices.InvoiceDate, invoices.Total 
FROM employees 
JOIN customers ON employees.EmployeeId = customers.SupportRepId 
JOIN invoices ON customers.CustomerId = invoices.CustomerId;