SELECT SUM(Price) AS POSSUM FROM Mail_Invoice minv
INNER JOIN Invoice inv
ON minv.Invoice_ID = inv.Invoice_ID
WHERE Price > 0 AND PostalCode = 04401 AND EXTRACT(year FROM Invoice_Date) = 2019 
AND EXTRACT(month FROM Invoice_Date) = '$row1["MONTH"]';