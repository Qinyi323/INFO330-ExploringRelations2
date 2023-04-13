SELECT tracks.TrackId, tracks.Name, tracks.Composer
FROM tracks
JOIN invoices ON invoice_items.InvoiceId = invoices.InvoiceId
JOIN invoice_items ON invoice_items.TrackId = tracks.TrackId;