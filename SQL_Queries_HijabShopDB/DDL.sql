---Student ID:1286048
---Name: Mahia Mosarrat
---Batch-CSSCSL-A/63/01
---DDL

---Create Database
Use master 
Go
IF DB_ID('Hijab_SaleDB') Is not null
Drop Database Hijab_SaleDB
Go

Create Database Hijab_SaleDB
on(
Name='Hijab_SaleDB_Data_1',
FileName='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Hijab_SaleDB_Data_1.mdf',
Size=25MB,
MaxSize=100MB,
FileGrowth=5%
)

Log On(
Name='Hijab_SaleDB_Log_1',
FileName='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Hijab_SaleDB_Log_1.ldf',
Size=2MB,
MaxSize=25MB,
FileGrowth=1%
)
USE Hijab_SaleDB
GO

CREATE TABLE Color(
ColorId int not null Primary key,
ColorName varchar(10)not null
)
CREATE TABLE ProductType(
ProductCode int not null Primary key,
ProductName varchar(50) not null
)
CREATE TABLE ClientStatus(
StatusId int not null primary key identity(1,1),
StatusType varchar(30) not null,
StatusDescription varchar(50)
)
CREATE TABLE ClientInfo(
ClientId int not null Primary key Identity,
ClietFirstName varchar(20) not null,
ClientLastName varchar(20) not null,
CustomerAddress varchar(80) not null,
City varchar(15) not null,
PhoneNumber varchar(15) not null Unique,
EmergencyContactNo varchar(15) SPARSE null,
StatusId int not null REFERENCES ClientStatus(StatusId)
)
CREATE TABLE Courier(
CourierId int not null Primary key,
CourierName varchar(20)not null
)
CREATE TABLE DeliveryOption(
DeliveryOptionId int not null Primary key,
DeliveryOptionName varchar(15) not null,
DeliveryChargeDescription varchar(30),
DeliveryChargeAmount money not null
)
CREATE TABLE EmergencyContactPerson(
ContactPersonId int not null Primary key,
ContactFName varchar(15)not null,
ContactLName varchar(15)not null,
ContactNo varchar(15)not null,
)
CREATE TABLE OrderInfo(
OrderId varchar(10) not null Primary key,
ClientId int not null REFERENCES ClientInfo(ClientId),
OrderDate date not null,
DeliveryDate date not null,
OrderTotalAmount money not null,
PaymentMethod varchar(10) not null Default 'Cash On',
DeliveryOptionId int not null REFERENCES DeliveryOption(DeliveryOptionId),
CourierId int not null REFERENCES Courier(CourierId),
ContactPersonId int not null REFERENCES EmergencyContactPerson(ContactPersonId),
)
CREATE TABLE OrderLineDetails(
OrderId varchar(10)not null REFERENCES OrderInfo(OrderId),
LineDetails int not null,
ProductCode int not null REFERENCES ProductType(ProductCode),
ColorId int not null REFERENCES Color(ColorId),
Quantity int not null Check(Quantity>0),
UnitPrice money not null,
Primary Key (OrderId,LineDetails)
)
GO
---CREATE Sequence
CREATE SEQUENCE TestSequence
AS int 
START WITH 10 INCREMENT BY 10 
MINVALUE 0 MAXVALUE 100000 
CYCLE CACHE 10; 

DROP SEQUENCE TestSequence
GO
---Create Index
CREATE INDEX ix_ProductName
ON ProductType(ProductName);

--justify
sp_ helpindex ix_ProductName
GO

---DROP Table
DROP TABLE ClientStatusArchive
GO

-----VIEW
CREATE VIEW vu_OrderInfoMoreThan2000
WITH ENCRYPTION,SCHEMABINDING
AS
SELECT oi.OrderId,ClietFirstName+' '+ClientLastName FullName,ci.City,oi.OrderDate,oi.OrderTotalAmount
FROM dbo.OrderInfo oi JOIN dbo.ClientInfo ci ON oi.ClientId=ci.ClientId
WHERE OrderTotalAmount>2000
GO
---justify----
SELECT * FROM vu_OrderInfoMoreThan2000
---Justify---
exec sp_helptext vu_OrderInfoMoreThan2000
Go
-----Stored Procedures
CREATE PROC sp_Select_Insert_Update_Delete_Output_OptionalParameter_Return
@operation int =0,
@orederId varchar(10),
@clientId int,
@orderDate date,
@deliveryDate date,
@totalAmount money,
@paymentMethod varchar(15)='Cash on',
@deliveryOption int,
@courierId int,
@contactPerson int,
@clientOrderAmount money OUTPUT,
@returnCount int
AS
BEGIN
if @operation=1
BEGIN
SELECT OrderId,ClientId,OrderDate,OrderTotalAmount,PaymentMethod,DeliveryOptionId FROM OrderInfo
END
if @operation=2
BEGIN
BEGIN TRY
BEGIN TRAN
INSERT INTO OrderInfo VALUES(@orederId,@clientId,@orderDate,@deliveryDate,@totalAmount,@paymentMethod,
@deliveryOption,@courierId,@contactPerson)
COMMIT TRAN
END TRY
BEGIN CATCH
SELECT ERROR_MESSAGE() ErrMessage, ERROR_NUMBER() ErrNumber,ERROR_SEVERITY() ErrSeverity
ROLLBACK TRAN
END CATCH
END
if @operation=3
BEGIN
UPDATE OrderInfo SET OrderTotalAmount=@totalAmount WHERE OrderDate=@orderDate
END
if @operation=4
BEGIN
DELETE FROM OrderInfo WHERE OrderDate=@orderDate
END
if @operation=5
BEGIN
SELECT @clientOrderAmount=OrderTotalAmount FROM OrderInfo WHERE ClientId=@clientId
END
if @operation=6
BEGIN
SELECT @returnCount=COUNT(*) FROM OrderInfo WHERE ClientId=@clientId
RETURN @returnCount
END
END
GO

---Procedure calling
GO
EXEC sp_Select_Insert_Update_Delete_Output_OptionalParameter_Return '1','','','','','','','','','','',''
EXEC sp_Select_Insert_Update_Delete_Output_OptionalParameter_Return '2','HB 132','10','2024-12-11','2024-12-14','2200','Bkash','501','403','602','',''
EXEC sp_Select_Insert_Update_Delete_Output_OptionalParameter_Return '3','','','2024-12-11','','2500','','','','','',''
EXEC sp_Select_Insert_Update_Delete_Output_OptionalParameter_Return '4','','','2024-12-11','','','','','','','',''
-----output
GO
DECLARE @clientOrderAmount money
EXEC sp_Select_Insert_Update_Delete_Output_OptionalParameter_Return '5','','10','','','','','','','',@customerOrderAmount OUTPUT,''
PRINT @clientOrderAmount
GO
----Return
DECLARE @returnCount int
EXEC @returnCount=sp_Select_Insert_Update_Delete_Output_OptionalParameter_Return '6','','10','','','','','','','','',''
SELECT  'Return value '+CONVERT( varchar, @returnCount) AS ReturnValue
GO
----Scalar function
GO
CREATE FUNCTION GetClientName(@clientId int)
RETURNS varchar(40)
AS
BEGIN
RETURN(SELECT ClietFirstName+' '+ClientLastName FullName 
FROM ClientInfo  WHERE ClientId=@clientId)
END

----Justify
SELECT dbo.GetClientName(20) AS CustomerName

-----table valued
GO
CREATE FUNCTION GetClientDataByCity(@city varchar(10))
RETURNS TABLE
AS
RETURN
SELECT ClietFirstName+' '+ClientLastName FullName,City,PhoneNumber FROM ClientInfo WHERE City=@city

-----Justify
GO
SELECT * FROM GetClientDataByCity('Kurigram')

----Multi-statement function
GO
CREATE FUNCTION fnMultistatement(@Amount money)
RETURNS @LatestOrderTable TABLE
(
OrderId varchar(10),
OrderDate date,
OrderTotalAmount money,
PaymentMethod varchar(10)
)
AS
BEGIN
INSERT INTO @LatestOrderTable
SELECT OrderId,OrderDate,OrderTotalAmount,PaymentMethod
FROM OrderInfo
WHERE OrderTotalAmount>=@Amount
RETURN
END
----Justify
GO
SELECT * FROM fnMultistatement(1800)

----Trigger
GO
CREATE TRIGGER tr_InsertClientStatus
ON ClientStatusCopy
AFTER INSERT
AS
BEGIN
SELECT * FROM inserted
END

Insert into ClientStatusCopy values('VIP Client','Purchase monthly')

---FOR Trigger
GO
CREATE TRIGGER tr_ClientStatusCopy1
ON ClientStatusCopy
FOR INSERT
AS
BEGIN
SELECT * FROM inserted
END

Insert into ClientStatusCopy values('Regular Client','Purchase weekly')

---Instead Of Trigger
GO
CREATE TRIGGER tr_PreventMultipleRecordUpdateDelete
ON ClientStatusCopy
INSTEAD OF UPDATE, DELETE
AS
BEGIN
SET NOCOUNT ON
IF(SELECT COUNT(*) FROM inserted)>1 OR (SELECT COUNT(*) FROM deleted)>1
BEGIN
RAISERROR('Cannot update or delete more than one record at a time',16,1)
ROLLBACK TRANSACTION
RETURN
END

IF EXISTS(SELECT * FROM inserted)
BEGIN
UPDATE ClientStatusCopy SET StatusType=i.StatusType
FROM ClientStatusCopy CS
INNER JOIN inserted i ON CS.StatusDescription=i.StatusDescription
END
IF EXISTS (SELECT * FROM deleted)
BEGIN
DELETE FROM ClientStatusCopy WHERE StatusType IN(SELECT StatusType FROM deleted)
END
END

DELETE FROM ClientStatusCopy where StatusType='VIP Client'
