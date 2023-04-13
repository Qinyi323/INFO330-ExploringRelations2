SELECT tracks.Name,invoice_items.Quantity
FROM invoice_items
JOIN tracks ON invoice_items.TrackId = tracks.TrackId
JOIN invoices ON invoice_items.InvoiceID = invoices.InvoiceId
WHERE invoices.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31'
GROUP BY tracks.TrackId
ORDER BY Quantity DESC;