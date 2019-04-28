SELECT FirstName || LastName AS CustName, c.Customer_ID, StreetAddress, City.Name, MobileNo, CNIC FROM Customer c
INNER JOIN Details d
ON c.Details_ID = d.Details_ID
INNER JOIN Customer_Addresses ca
ON c.Customer_ID = ca.Customer_ID
INNER JOIN DomesticAddresses da
ON ca.Address_ID = da.Address_ID
INNER JOIN City
ON City.City_ID = da.City_ID
WHERE c.Customer_ID = 