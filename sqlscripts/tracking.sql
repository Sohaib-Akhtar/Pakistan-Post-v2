/*
    Returns Origin City Name
*/
-- SELECT Name AS Origin FROM PostOffice po
-- INNER JOIN City c
-- ON c.City_ID = po.City_ID
-- WHERE PostalCode = (
--     SELECT PostalCode FROM Invoice
--     WHERE Invoice_ID = (
--         SELECT Invoice_ID FROM Mail_Invoice
--         WHERE Barcode = 40001933
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
--     WHERE Barcode = 40001932
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


/*
    Tracking History
*/

SELECT st.TimeStamp, stype.Description, c.City FROM StatusTracking st 
INNER JOIN StatusType stype
ON st.Status_ID = stype.Status_ID
INNER JOIN PostOffice po
ON po.PostalCode = st.PostalCode
INNER JOIN City c
ON c.City_ID = po.City_ID
WHERE st.Barcode = 
ORDER BY SerialNo desc;