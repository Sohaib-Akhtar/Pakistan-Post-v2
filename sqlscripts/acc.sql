/*SELECT invoice_date FROM Invoice inv
INNER JOIN Mail_Invoice minv
ON inv.invoice_id = minv.invoice_id
WHERE barcode = */

SELECT DISTINCT AccountOffice_ID FROM PostOffice po
INNER JOIN City c
ON c.City_ID = po.City_ID
WHERE c.NAME = 