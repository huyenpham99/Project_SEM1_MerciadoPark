
USE T1907A_Group5_TeamNhanPham
GO


CREATE TABLE Customer(
Customer_ID VARCHAR(10) PRIMARY KEY,
Firts_Name VARCHAR(20) NOT NULL,
Last_Name VARCHAR(20) NOT NULL,
Phone_Number VARCHAR(10) NOT NULL,
Email VARCHAR(20) NOT NULL
);
CREATE TABLE Payment(
Payment_ID  VARCHAR(10) PRIMARY KEY,
Name_Card VARCHAR(50) NOT NULL,
Number_Card INT NOT NULL,
Expiration DATE NOT NULL,
CVV INT  NOT NULL,
Customer_ID VARCHAR(10) NOT NULL,
ID_TypePayment VARCHAR(10) FOREIGN KEY REFERENCES Type_Payment(ID_TypePayment)
);


CREATE TABLE Type_Payment(
ID_TypePayment VARCHAR(10) PRIMARY KEY,
Type_Payment VARCHAR(20)
);
CREATE TABLE Type_Ticket(
ID_TypeTicket VARCHAR(10) PRIMARY KEY ,
Name_Ticket VARCHAR(20) NOT NULL,
Price_Ticket MONEY NOT NULL
);

CREATE TABLE Service(
ID_Service VARCHAR(10)PRIMARY KEY, 
Name_Service VARCHAR(50)
);

CREATE TABLE Ticket(
Ticket_ID VARCHAR(10) PRIMARY KEY,
ID_Service VARCHAR(10) FOREIGN KEY REFERENCES dbo.Service(ID_Service),
ID_TypeTicket VARCHAR(10) FOREIGN KEY REFERENCES dbo.Type_Ticket(ID_TypeTicket)
);

CREATE TABLE Order_ticket(
ID_Order VARCHAR(10) PRIMARY KEY ,
Customer_ID VARCHAR(10) FOREIGN KEY REFERENCES dbo.Customer(Customer_ID) NOT NULL,
Order_Date datetime NOT null
);

CREATE  TABLE Order_Detail(
ID_OrderDetail VARCHAR(10) PRIMARY KEY,
ID_Order VARCHAR(10) FOREIGN KEY REFERENCES Order_ticket(ID_Order) NOT NULL,
Ticket_ID VARCHAR(10) FOREIGN KEY REFERENCES dbo.Ticket(Ticket_ID) NOT NULL,
Amount INT NOT NULL, 
Total  MONEY NOT NULL,
Status VARCHAR(10),
Day_Go DATETIME, 
);

	INSERT INTO Customer(Customer_ID,Firts_Name,Last_Name,Phone_Number,Email) 
	VALUES ('CTM0011', N'Hoang Van', N'Thai', '0125456654', 'thai123@gmail.com')
	INSERT INTO Customer(Customer_ID,Firts_Name,Last_Name,Phone_Number,Email) 
	VALUES ('CTM002', N'Le Thi', N'Hien', '0359875522', 'hien123@gmail.com')
	INSERT INTO Customer(Customer_ID,Firts_Name,Last_Name,Phone_Number,Email) 
	VALUES ('CTM003', N'Nguyen Dinh', N'Thi', '0265565656', 'thi123@gmail.com')
	INSERT INTO Customer(Customer_ID,Firts_Name,Last_Name,Phone_Number,Email) 
	VALUES ('CTM004', N'Pham Thi', N'Huyen', '0377097073', 'huyen123@gmail.com')
	INSERT INTO Customer(Customer_ID,Firts_Name,Last_Name,Phone_Number,Email) 
	VALUES ('CTM005', N'Duong Thi', N'Nguyet', '025975663', 'nguyet123@gmail.com')
	INSERT INTO Customer(Customer_ID,Firts_Name,Last_Name,Phone_Number,Email) 
	VALUES ('CTM006', N'Nguyen Van', N'Linh', '0545656565', 'linh123@gmail.com')
	INSERT INTO Customer(Customer_ID,Firts_Name,Last_Name,Phone_Number,Email) 
	VALUES ('CTM007', N'Tran Van', N'Nhat', '0298756322', 'nhat123@gmail.com')
	INSERT INTO Customer(Customer_ID,Firts_Name,Last_Name,Phone_Number,Email) 
	VALUES ('CTM008', N'Duong Thi', N'Ngoc', '012369756', 'ngoc123@gmail.com')
	INSERT INTO Customer(Customer_ID,Firts_Name,Last_Name,Phone_Number,Email) 
	VALUES ('CTM009', N'Le Lan', N'Anh', '033333333', 'anh123@gmail.com')
	INSERT INTO Customer(Customer_ID,Firts_Name,Last_Name,Phone_Number,Email) 
	VALUES ('CTM010', N'Nguyen Van', N'Dat', '0774126348', 'dat123@gmail.com')
	SELECT * FROM dbo.Customer
	

	INSERT INTO Payment(Payment_ID,Name_Card,Number_Card,Expiration, CVV, Customer_ID ,ID_TypePayment ) 
	VALUES('PM02554', 'Hoang Van Thai', '0604686546', '12/12/2020', 452, 'CTM0011', 'TPM60869');
	INSERT INTO Payment(Payment_ID,Name_Card,Number_Card,Expiration, CVV, Customer_ID ,ID_TypePayment ) 
	VALUES('PM03555', 'Le Thi Hien', '0604685346', '05/12/2020', 500, 'CTM0013', 'TPM60868');
	INSERT INTO Payment(Payment_ID,Name_Card,Number_Card,Expiration, CVV, Customer_ID ,ID_TypePayment ) 
	VALUES('PM04556', 'Nguyen Dinh Thi', '0604286546', '12/02/2021', 366, 'CTM0061', 'TPM60867');
	INSERT INTO Payment(Payment_ID,Name_Card,Number_Card,Expiration, CVV, Customer_ID ,ID_TypePayment ) 
	VALUES('PM05554', 'Pham Thi Huyen', '0604023546', '02/12/2020', 023, 'CTM0091', 'TPM60866');
	INSERT INTO Payment(Payment_ID,Name_Card,Number_Card,Expiration, CVV, Customer_ID ,ID_TypePayment ) 
	VALUES('PM06559', 'Duong Thi Nguyet', '060469846', '12/06/2020', 145, 'CTM0311', 'TPM60866');
	INSERT INTO Payment(Payment_ID,Name_Card,Number_Card,Expiration, CVV, Customer_ID ,ID_TypePayment ) 
	VALUES('PM07552', 'Nguyen Van Linh', '0604686826', '12/12/2020', 524, 'CTM1111', 'TPM60864');
	INSERT INTO Payment(Payment_ID,Name_Card,Number_Card,Expiration, CVV, Customer_ID ,ID_TypePayment ) 
	VALUES('PM08551', 'Tran Van Nhat', '060354546', '12/05/2020', 666, 'CTM0691', 'TPM60865');
	INSERT INTO Payment(Payment_ID,Name_Card,Number_Card,Expiration, CVV, Customer_ID ,ID_TypePayment ) 
	VALUES('PM09569', 'Duong Thi Ngoc', '0603586546', '12/07/2020', 896, 'CTM0361', 'TPM60863');
	INSERT INTO Payment(Payment_ID,Name_Card,Number_Card,Expiration, CVV, Customer_ID ,ID_TypePayment ) 
	VALUES('PM03536', 'Le Lan Anh', '0604603446', '12/10/2021', 454, 'CTM00561', 'TPM60858');
	INSERT INTO Payment(Payment_ID,Name_Card,Number_Card,Expiration, CVV, Customer_ID ,ID_TypePayment ) 
	VALUES('PM00575', 'Nguyen Van Dat', '0604000546', '06/12/2020', 333, 'CTM36011', 'TPM60860');

	SELECT * FROM dbo.Payment

INSERT INTO Type_Payment(ID_TypePayment, Type_Payment)
VALUES ('TPM60868', 'Internetbanking');
INSERT INTO Type_Payment(ID_TypePayment, Type_Payment)
VALUES ('TPM60869', 'CreditCard');
INSERT INTO Type_Payment(ID_TypePayment, Type_Payment)
VALUES ('TPM60867', 'Cash');
INSERT INTO Type_Payment(ID_TypePayment, Type_Payment)
VALUES ('TPM60866', 'Internetbanking');
INSERT INTO Type_Payment(ID_TypePayment, Type_Payment)
VALUES ('TPM60865', 'CreditCard');
INSERT INTO Type_Payment(ID_TypePayment, Type_Payment)
VALUES ('TPM60864', 'Internetbanking');
INSERT INTO Type_Payment(ID_TypePayment, Type_Payment)
VALUES ('TPM60862', 'Internetbanking');
INSERT INTO Type_Payment(ID_TypePayment, Type_Payment)
VALUES ('TPM60863', 'Cash');
INSERT INTO Type_Payment(ID_TypePayment, Type_Payment)
VALUES ('TPM60858', 'Internetbanking');
INSERT INTO Type_Payment(ID_TypePayment, Type_Payment)
VALUES ('TPM60860', 'CreditCard');
DELETE FROM dbo.Type_Payment
SELECT *FROM dbo.Type_Payment


INSERT INTO Type_Ticket(ID_TypeTicket, Name_Ticket, Price_Ticket )
VALUES('TK001', 'Admission Ticket', 10);
INSERT INTO Type_Ticket(ID_TypeTicket, Name_Ticket, Price_Ticket )
VALUES('TK002', 'Combo Ticket 1', 30);
INSERT INTO Type_Ticket(ID_TypeTicket, Name_Ticket, Price_Ticket )
VALUES('TK003', 'Admission Ticket', 10);
INSERT INTO Type_Ticket(ID_TypeTicket, Name_Ticket, Price_Ticket )
VALUES('TK004', 'Combo Ticket 2', 50);
INSERT INTO Type_Ticket(ID_TypeTicket, Name_Ticket, Price_Ticket )
VALUES('TK005', 'Admission Ticket', 10);
INSERT INTO Type_Ticket(ID_TypeTicket, Name_Ticket, Price_Ticket )
VALUES('TK006', 'Combo Ticket 1', 30);
INSERT INTO Type_Ticket(ID_TypeTicket, Name_Ticket, Price_Ticket )
VALUES('TK007', 'Combo Ticket 2', 50);
INSERT INTO Type_Ticket(ID_TypeTicket, Name_Ticket, Price_Ticket )
VALUES('TK008', 'Admission Ticket', 10);
INSERT INTO Type_Ticket(ID_TypeTicket, Name_Ticket, Price_Ticket )
VALUES('TK009', 'Combo Ticket 1', 30);
INSERT INTO Type_Ticket(ID_TypeTicket, Name_Ticket, Price_Ticket )
VALUES('TK0010', 'Combo Ticket 2', 50);
SELECT * FROM dbo.Type_Ticket


INSERT INTO Service(ID_Service,Name_Service)
VALUES('SV001', 'Food');
INSERT INTO Service(ID_Service,Name_Service)
VALUES('SV002', 'Game');
INSERT INTO Service(ID_Service,Name_Service)
VALUES('SV003', 'Entertainment Games');
INSERT INTO Service(ID_Service,Name_Service)
VALUES('SV004', 'Coffee');
INSERT INTO Service(ID_Service,Name_Service)
VALUES('SV005', 'Food');
INSERT INTO Service(ID_Service,Name_Service)
VALUES('SV006', 'Coffee');
INSERT INTO Service(ID_Service,Name_Service)
VALUES('SV007', 'Food');
INSERT INTO Service(ID_Service,Name_Service)
VALUES('SV008', 'Entertainment Games');
INSERT INTO Service(ID_Service,Name_Service)
VALUES('SV009', 'Food');
INSERT INTO Service(ID_Service,Name_Service)
VALUES('SV0010', 'Coffee');
SELECT * FROM dbo.Service


INSERT INTO Ticket(Ticket_ID, ID_Service,ID_TypeTicket )
VALUES('T001','SV001', 'TK001'  );
INSERT INTO Ticket(Ticket_ID, ID_Service,ID_TypeTicket )
VALUES('T002','SV002', 'TK002'  );
INSERT INTO Ticket(Ticket_ID, ID_Service,ID_TypeTicket )
VALUES('T003','SV003', 'TK003'  );
INSERT INTO Ticket(Ticket_ID, ID_Service,ID_TypeTicket )
VALUES('T004','SV004', 'TK004'  );
INSERT INTO Ticket(Ticket_ID, ID_Service,ID_TypeTicket )
VALUES('T005','SV005', 'TK005'  );
INSERT INTO Ticket(Ticket_ID, ID_Service,ID_TypeTicket )
VALUES('T006','SV006', 'TK006'  );
INSERT INTO Ticket(Ticket_ID, ID_Service,ID_TypeTicket )
VALUES('T007','SV007', 'TK007'  );
INSERT INTO Ticket(Ticket_ID, ID_Service,ID_TypeTicket )
VALUES('T008','SV008', 'TK008'  );
INSERT INTO Ticket(Ticket_ID, ID_Service,ID_TypeTicket )
VALUES('T009','SV009', 'TK009'  );
INSERT INTO Ticket(Ticket_ID, ID_Service,ID_TypeTicket )
VALUES('T0010','SV0010', 'TK0010'  );
SELECT * FROM dbo.Ticket

INSERT INTO Order_ticket(ID_Order,Customer_ID, Order_Date )
VALUES('OD001', 'CTM0011', '12/12/2019');
INSERT INTO Order_ticket(ID_Order,Customer_ID, Order_Date )
VALUES('OD002', 'CTM002', '12/05/2019');
INSERT INTO Order_ticket(ID_Order,Customer_ID, Order_Date )
VALUES('OD003', 'CTM003', '12/03/2019');
INSERT INTO Order_ticket(ID_Order,Customer_ID, Order_Date )
VALUES('OD004', 'CTM004', '12/5/2019');
INSERT INTO Order_ticket(ID_Order,Customer_ID, Order_Date )
VALUES('OD005', 'CTM005', '12/6/2019');
INSERT INTO Order_ticket(ID_Order,Customer_ID, Order_Date )
VALUES('OD006', 'CTM006', '12/03/2019');
INSERT INTO Order_ticket(ID_Order,Customer_ID, Order_Date )
VALUES('OD007', 'CTM007', '12/4/2019');
INSERT INTO Order_ticket(ID_Order,Customer_ID, Order_Date )
VALUES('OD008', 'CTM008', '12/6/2019');
INSERT INTO Order_ticket(ID_Order,Customer_ID, Order_Date )
VALUES('OD009', 'CTM009', '12/7/2019');
INSERT INTO Order_ticket(ID_Order,Customer_ID, Order_Date )
VALUES('OD0010', 'CTM010', '12/9/2019');

SELECT * FROM dbo.Order_ticket

INSERT INTO Order_Detail(ID_OrderDetail,ID_Order,Ticket_ID, Amount,Total, Status,Day_Go)
VALUES('ODD001', 'OD001', 'T001', 6, 200, 'Paid', '12/08/2019' );
INSERT INTO Order_Detail(ID_OrderDetail,ID_Order,Ticket_ID, Amount,Total, Status,Day_Go)
VALUES('ODD002', 'OD002', 'T002', 5, 200, 'Paid', '12/09/2019' );
INSERT INTO Order_Detail(ID_OrderDetail,ID_Order,Ticket_ID, Amount,Total, Status,Day_Go)
VALUES('ODD003', 'OD003', 'T003', 6, 350, 'Paid', '12/01/2019' );
INSERT INTO Order_Detail(ID_OrderDetail,ID_Order,Ticket_ID, Amount,Total, Status,Day_Go)
VALUES('ODD004', 'OD004', 'T004', 12, 240, 'Paid', '12/12/2019' );
INSERT INTO Order_Detail(ID_OrderDetail,ID_Order,Ticket_ID, Amount,Total, Status,Day_Go)
VALUES('ODD005', 'OD005', 'T005', 4, 250, 'Paid', '12/12/2019' );
INSERT INTO Order_Detail(ID_OrderDetail,ID_Order,Ticket_ID, Amount,Total, Status,Day_Go)
VALUES('ODD006', 'OD006', 'T006', 4, 180, 'Paid', '12/3/2019' );
INSERT INTO Order_Detail(ID_OrderDetail,ID_Order,Ticket_ID, Amount,Total, Status,Day_Go)
VALUES('ODD007', 'OD007', 'T007', 6, 400, 'Paid', '12/1/2019' );
INSERT INTO Order_Detail(ID_OrderDetail,ID_Order,Ticket_ID, Amount,Total, Status,Day_Go)
VALUES('ODD008', 'OD008', 'T008', 4, 160, 'Paid', '12/1/2019' );
INSERT INTO Order_Detail(ID_OrderDetail,ID_Order,Ticket_ID, Amount,Total, Status,Day_Go)
VALUES('ODD009', 'OD009', 'T009', 9, 200, 'Paid', '12/3/2019' );
INSERT INTO Order_Detail(ID_OrderDetail,ID_Order,Ticket_ID, Amount,Total, Status,Day_Go)
VALUES('ODD0010', 'OD0010', 'T0010', 10, 260, 'Paid', '12/8/2019' );

SELECT * FROM dbo.Order_Detail;

