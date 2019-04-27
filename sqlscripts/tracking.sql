/*
    Returns Origin Postal Office Name -> Change to Postal Office City
*/
-- SELECT PostOffice_Name AS Origin FROM PostOffice
-- WHERE PostalCode = (
--     SELECT PostalCode FROM Invoice
--     WHERE Invoice_ID = (
--         SELECT Invoice_ID FROM Mail_Invoice
--         WHERE Barcode = 40001932 and Price >0
--     )
-- );

/*
    Returns Destion City
*/
-- SELECT Name AS Destination FROM City
-- WHERE City_ID = (
--     SELECT City_ID FROM DomesticAddresses
--     WHERE Address_ID = (
--         SELECT R_Address_ID FROM Mail
--         WHERE Barcode = 40001932
--     )
-- );


/*
    Invoice_Date
*/
-- SELECT Invoice_Date AS BookDate FROM Invoice
-- WHERE Invoice_ID = (
--     SELECT Invoice_ID FROM Mail_Invoice
--     WHERE Barcode = 40001932 and Price >0
-- );


/*
    Shipper
*/
-- SELECT FirstName || ' ' || LastName AS Shipper FROM Details
-- WHERE Details_ID = (
--     SELECT S_Detail_ID FROM Mail
--     WHERE Barcode = 40001932
-- );

/*
    Cosignee
*/
-- SELECT FirstName || ' ' || LastName AS Cosignee FROM Details
-- WHERE Details_ID = (
--     SELECT R_Detail_ID FROM Mail
--     WHERE Barcode = 40001932
-- );