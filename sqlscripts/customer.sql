-- SELECT FirstName || LastName AS CustName, c.Customer_ID, StreetAddress, City.Name, MobileNo, CNIC FROM Customer c
-- INNER JOIN Details d
-- ON c.Details_ID = d.Details_ID
-- INNER JOIN Customer_Addresses ca
-- ON c.Customer_ID = ca.Customer_ID
-- INNER JOIN DomesticAddresses da
-- ON ca.Address_ID = da.Address_ID
-- INNER JOIN City
-- ON City.City_ID = da.City_ID
-- WHERE c.Customer_ID = ;


SELECT minv.Barcode AS Tracking, Type_Name AS Description, m.Qty, FirstName || ' '||LastName AS RecipientName, StreetAddress, ct.Name, Invoice_Date
FROM Customer c
INNER JOIN Customer_Invoice cinv
ON cinv.Customer_ID = c.Customer_ID
INNER JOIN Invoice inv
ON inv.Invoice_ID = cinv.Invoice_ID 
INNER JOIN Mail_Invoice minv
ON minv.Invoice_ID = cinv.Invoice_ID
INNER JOIN Mail m
ON m.Barcode = minv.Barcode
INNER JOIN Details d
ON d.Details_ID = m.R_Detail_ID
INNER JOIN ContentType ctype
ON ctype.ContentType_ID = m.ContentType_ID
INNER JOIN Customer_Addresses ca
ON c.Customer_ID = ca.Customer_ID
INNER JOIN DomesticAddresses da
ON ca.Address_ID = da.Address_ID
INNER JOIN City ct
ON ct.City_ID = da.City_ID
WHERE c.Customer_ID = 10005 and minv.Price>0;
