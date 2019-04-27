/*
    Returns Postal Office Name -> Change to Postal Office City
*/
SELECT PostOffice_Name FROM PostOffice
WHERE PostalCode = (
    SELECT PostalCode FROM Invoice
    WHERE Invoice_ID = (
        SELECT Invoice_ID FROM Mail_Invoice
        WHERE Barcode = 40001932 and Price >0
    )
);