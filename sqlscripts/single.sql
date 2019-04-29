INSERT INTO Details
(Details_ID,FirstName,LastName,MobileNo,TelNo)
VALUES
(300024, 'Bilal', 'Shabbir', 03215729384, 0211598583);

INSERT INTO DomesticAddresses
(Address_ID,StreetAddress,City_ID,PostalCode)
VALUES
(102024,'Flat#69, Tower#7, E-11/1',456,4010);

INSERT INTO Mail
(Barcode,S_Address_ID,S_Detail_ID,R_Address_ID,R_Detail_ID,ContentType_ID,Priority_ID,MailType_ID,Weight,Worth,Insured_Status,Refund,Qty)
VALUES
(40001933, NULL, NULL, 102024, 300024, 'I03', NULL,'M003', 700, NULL,'false', 'true', 1);

INSERT INTO Invoice
(Invoice_ID,Agent_ID,PostalCode,Invoice_Date,TotalPrice,Qty)
VALUES
(230002947,70007,04401,TO_DATE('2019-07-26 00:00:00','yyyy/mm/dd hh24:mi:ss'),700,1);

INSERT INTO Mail_Invoice
(Invoice_ID,Barcode,Price,Signature)   
VALUES
(230002947,40001933,700,NULL);