SELECT invoice_items.InvoiceLineId, invoice_items.InvoiceId, invoice_items.UnitPrice, invoice_items.Quantity,tracks.Name, artists.Name
FROM invoice_items
JOIN tracks ON invoice_items.TrackId = tracks.TrackId
JOIN albums ON tracks.AlbumId = albums.AlbumId
JOIN artists ON albums.ArtistId = artists.ArtistId;