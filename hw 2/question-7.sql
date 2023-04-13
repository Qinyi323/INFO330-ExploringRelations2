SELECT tracks.TrackId, tracks.Name, tracks.Composer
FROM tracks
LEFT JOIN invoice_items on invoice_items.TrackId = tracks.TrackId
WHERE invoice_items.TrackId IS NULL;