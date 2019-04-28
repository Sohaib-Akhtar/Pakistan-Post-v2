Create table ContentType(
    ContentType_ID char(3) not null,
    Type_Name varchar2(30) not null,
    Insurance_Val float(1),
    Constraint CT_pk primary key(ContentType_ID)
);

Create table MailType(
    MailType_ID char(4) not null,
    Type_Name varchar2(30) not null,
    Max_Weight int,
    Min_Weight int,
    Constraint chk_wmin check (Min_Weight>=1 and Min_Weight<Max_Weight),
    Constraint MT_pk primary key(MailType_ID)
);

Create table Priority(
    Priority_ID numeric(2) not null,
    Name varchar2(30) not null,
    Cost int,
    Constraint PR_pk primary key(Priority_ID),
    Constraint chk_cost check (cost>=0)
);

Create table Details(
    Details_ID numeric(24) not null,
    FirstName varchar2(20) not null,
    LastName varchar2(20),
    MobileNo char(11),
    TelNo char(10),
    Constraint DT_pk primary key(Details_ID)
);

Create table StatusType(
    Status_ID char(3) not null,
    Description varchar2(50) not null,
    Constraint ST_pk primary key(Status_ID)
);

Create table POType(
    Type_ID numeric(2) not null,
    Type_Name varchar2(10),
    Constraint POTYPE_pk primary key(Type_ID)
);

Create table Province(
    Province_ID char(4) not null,
    Name varchar2(50) not null,
    Constraint prov_pk primary key(Province_ID)
);

Create table City(
    City_ID numeric(3) not null,
    Province_ID char(4) not null,
    Name varchar2(20) not null,
    Constraint CTY_pk primary key(City_ID),
    Constraint CTY_fk foreign key(Province_ID) references Province(Province_ID)
);

Create table Employee(
    Emp_ID numeric(5) not null,
    FirstName varchar2(20) not null,
    LastName varchar2(20),
    MobileNo char(11),
    TelNo char(10),
    DOB date,
    CNIC char(13),
    Join_Date date,
    Constraint Emp_pk primary key(Emp_ID)
);

Create table PostOffice(
    PostalCode numeric(5) not null,
    PostOffice_Name varchar2(40) not null,
    AccountOffice_ID numeric(6),
    Manager_ID numeric(10),
    TelNo numeric(11),
    City_ID numeric(3) not null,
    Type_ID numeric(2) not null,
    Constraint PO_pk primary key(PostalCode),
    Constraint PO_fk foreign key(AccountOffice_ID) references PostOffice(PostalCode),
    Constraint PO_fk_a foreign key(Manager_ID) references Employee(Emp_ID),
    Constraint PO_fk_b foreign key(City_ID) references City(City_ID)
);


Create table MailDetail(
    MailType_ID char(4) not null,
    SerialNo int not null,
    Max_Weight int,
    Min_Weight int,
    Cost int not null,
    Constraint chk_wghtmin check (Min_Weight>=0 and Min_Weight<Max_Weight),
    Constraint MD_pk primary key(MailType_ID, SerialNo),
    Constraint MD_fk foreign key(MailType_ID) references MailType(MailType_ID)
);

Create table DomesticAddresses(
    Address_ID numeric(24) not null,
    StreetAddress varchar2(500) not null,
    City_ID numeric(3) not null,
    PostalCode numeric(5),
    Constraint DA_pk primary key(Address_ID),
    Constraint DA_fk_a foreign key(City_ID) references City(City_ID)
);

Create table Customer(
    Customer_ID numeric(10) not null,
    Details_ID numeric(24) not null,
    DOB date,
    CNIC numeric(13),
    RegDate date not null,
    Constraint Customer_pk primary key(Customer_ID),
    Constraint Customer_fk foreign key(Details_ID) references Details(Details_ID)
);

Create table Invoice(
    Invoice_ID numeric(24) not null,
    Agent_ID numeric(10),
    PostalCode numeric(6) not null,
    Invoice_Date date not null,
    TotalPrice float,
    Qty numeric(3),
    Constraint INV_pk primary key(Invoice_ID),
    Constraint INV_fk foreign key(Agent_ID) references Employee(Emp_ID),
    Constraint INV_fk_a foreign key(PostalCode) references PostOffice(PostalCode)
);

Create table Customer_Invoice(
    Invoice_ID numeric(24) not null,
    Customer_ID numeric(10) not null,
    Constraint CINV_pk primary key(Invoice_ID),
    Constraint CINV_fk foreign key(Customer_ID) references Customer(Customer_ID),
    Constraint CINV_fk_a foreign key(Invoice_ID) references Invoice(Invoice_ID)
);

Create table Customer_Addresses(
    Customer_ID numeric(10) not null,
    Address_ID numeric(24) not null,
    Constraint CADD_pk primary key(Customer_ID,Address_ID),
    Constraint CADD_fk foreign key(Customer_ID) references Customer(Customer_ID),
    Constraint CADD_fk_a foreign key(Address_ID) references DomesticAddresses(Address_ID)
);


Create table Mail(
    Barcode numeric(8) not null,
    S_Address_ID numeric(24),
    S_Detail_ID numeric(24),
    R_Address_ID numeric(24) not null,
    R_Detail_ID numeric(24),
    Priority_ID numeric(2),
    MailType_ID char(4) not null,
    ContentType_ID char(3),
    Weight numeric(5) not null, 
    Worth int,
    Insured_Status varchar2(5) not null,
    Refund varchar2(5),
    Qty numeric(1) not null,
    Constraint Mail_pk primary key(Barcode),
    Constraint Mail_chkStatus check (Insured_Status in ('true','false')),
    Constraint Mail_chkRefund check (Refund in ('true','false')),
    Constraint mail_fk_a foreign key(S_Address_ID) references DomesticAddresses (Address_ID),
    Constraint mail_fk_b foreign key(R_Address_ID) references DomesticAddresses (Address_ID),
    Constraint mail_fk_c foreign key(S_Detail_ID) references Details (Details_ID),
    Constraint mail_fk_d foreign key(R_Detail_ID) references Details (Details_ID),
    Constraint mail_fk_e foreign key(Priority_ID) references Priority(Priority_ID),
    Constraint mail_fk_f foreign key(MailType_ID) references MailType(MailType_ID),
    Constraint mail_fk_g foreign key(ContentType_ID) references ContentType(ContentType_ID),    
    Constraint chk_weight check (Weight>=0),
    Constraint chk_worth check (worth>0 and worth<=50000)
);


Create table Mail_Invoice(
    Invoice_ID numeric(24) not null,
    Barcode numeric(8) not null,
    Price float,
    Signature varchar2(20),
    Constraint InvoiceMail_pk primary key(Invoice_ID,Barcode),
    Constraint InvoiceMail_fk_a foreign key(Invoice_ID) references Invoice(Invoice_ID),
    Constraint InvoiceMail_fk_b foreign key(Barcode) references Mail(Barcode)
);

Create table StatusTracking(
    Barcode numeric(8) not null,
    SerialNo int not null,
    Status_ID char(3) not null,
    PostalCode numeric(6),
    TimeStamp timestamp,
    Constraint STR_pk primary key(Barcode,SerialNo),
    Constraint STR_fk foreign key(Barcode) references Mail(Barcode),
    Constraint STR_fk_a foreign key(Status_ID) references StatusType(Status_ID),
    Constraint STR_fk_b foreign key(PostalCode) references PostOffice(PostalCode)
);
    
Create table PostalEmployee(
    Emp_ID numeric(5) not null,
    PostalOffice numeric(5) not null,
    Constraint PE_pk primary key(Emp_ID),
    Constraint PE_fk foreign key(PostalOffice) references PostOffice (PostalCode)
);