---Student ID:1286048
---Name: Mahia Mosarrat
---Batch-CSSCSL-A/63/01
---DML 

---Inserting Data for All Tables
USE Hijab_SaleDB
GO

INSERT INTO Color(ColorId,ColorName)Values
(101,'Red'),
(102,'Blue'),
(103,'Green'),
(104,'Yellow'),
(105,'Black')

INSERT INTO ProductType(ProductCode,ProductName)Values
(201,'Check Cotton Hijab'),
(202,'Shimmer Work Hijab'),
(203,'Party Hijab'),
(204,'Chiffon Hijab'),
(205,'Printed Hijab'),
(206,'Silk Hijab'),
(207,'Karchupi Work Abaya')

INSERT INTO ClientStatus(StatusType,StatusDescription)Values
('Frequesnt CLient','Purchase more than 4 times'),
('Ocassional CLient','Purchase more than 2 times'),
('Potential CLient','Purchase 1 time'),
('Frequesnt CLient','Purchase more than 4 times'),
('Frequesnt CLient','Purchase more than 4 times'),
('Frequesnt CLient','Purchase more than 4 times'),
('VIP CLient','Purchase monthly'),
('VIP CLient','Purchase monthly')

INSERT INTO ClientInfo(ClietFirstName,ClientLastName,CustomerAddress,City,PhoneNumber,EmergencyContactNo,StatusId)Values
('Mahia',' Mosarrat','House-407/8, Road-07, Dohs Baridhara','Dhaka','(880)1729671243','(880)1521371243',1),
('Jeny',' Sarowar','mirpur road (2nd floor), section #14, mirpur','Dhaka','(880)1552817123',Null,2),
('Rakina','Jahan','chittagong city corporation hospital,Roasd-5','CTG','(880)1712547123','',3),
('Jaima','Ahmed','342, Senpara Parbata','Barishal','(880)1827010394','',3),
('Raka','Afsana','House-B8, Road-10,Timur Jangshon','Pabna','(880)1727015291','(880)1673109289',3),
('Tahsin','Hoque','abdullahpur, cotbari, uttara','Dhaka','(880)1752101534',Null,3),
('Alia','Islam','Flat-5/B,k.d. ghosh road','Khulna','(880)1744321573','',3),
('Rumi','Akter','plot #81, block-e, bashundhara r/a','Dhaka','(880)1793015789','',3),
('Raba','Rahman','House-407/8, Road-07, Dohs Baridhara','Dhaka','(880)1793015784','',3),
('Tashfia','Hasan','hussain court (5th floor), stadium market','Sylhet','(880)1823510712',Null,3),

('Fahima','Feroz','3/4,Road-6,rajshahi court','Rajshahi','(880)1821441237','',3),
('Sabiha','Saif','House-112,yushuf road','Khulna','(880)1732115128','(880)1757619042',3),
('Habiba','Shurovi','1/36, south mugdapara bank colony, (1st floor)','Dhaka','(880)1923354208','(880)1910327391',2),
('Likhon','Ahmed','56, north road (3rd floor)','Rangpur','(880)1713538701',Null,2),
('Papia','Hossain','314/2, ulan road, west rampura','Dhaka','(880)1925321304','',3),
('Ridhy','Sheikh','956, outer circular road','Kurigram','(880)1827321209','(880)1558809418',2),
('Afrin','Alam','shagorika building (3rd floor),shenpara','Mymensing','(880)1775241071','',3),
('Zakia','Riha','(2nd floor), 11, purana paltan','Dhaka','(880)1525681305','',3),
('Zinat','Afrin','34/a, ahmed para, sobujbag','Comilla','(880)1851417786',Null,3),
('Rifah','Jahan','nirebele house 28/9, k. m. das lane','Faridpur','(880)1853419727',Null,3),
('Mohua','Choudhury','14 trunk road, feni','Feni','(880)1713712305','',3)

INSERT INTO Courier(CourierId,CourierName)Values
(401,'Pathao'),
(402,'Redex'),
(403,'Bondhon')

INSERT INTO DeliveryOption(DeliveryOptionId,DeliveryOptionName,DeliveryChargeDescription,DeliveryChargeAmount)Values
(501,'Inside Dhaka','Areas inside Dhaka city',60),
(502,'Outside Dhaka','Areas outside Dhaka city',100),
(503,'Free','Purchase over 1500',0)

INSERT INTO EmergencyContactPerson(ContactPersonId,ContactFName,ContactLName,ContactNo)Values
(601,'Rabeya','Akter','01992054123'),
(602,'Sonia','Hasan','01521348712'),
(603,'Parul','Jahan','01840923176')

INSERT INTO OrderInfo(OrderId,ClientId,OrderDate,DeliveryDate,OrderTotalAmount,PaymentMethod,DeliveryOptionId,CourierId,ContactPersonId)Values
('HB 101',1,'2024-04-20','2024-04-23',710,'Cash On',501,402,601),
('HB 102',2,'2024-08-02','2024-08-05',860,'Cash On',503,403,602),
('HB 103',3,'2024-02-15','2024-02-20',720,'Bkash',502,401,603),
('HB 104',4,'2024-11-10','2024-11-15',350,'Bkash',502,401,603),
('HB 105',5,'2024-06-19','2024-06-24',3400,'',502,401,602),
('HB 106',6,'2024-09-13','2024-09-16',970,'Cash On',501,403,602),
('HB 107',7,'2024-07-31','2024-08-05',800,'Nagad',502,401,603),
('HB 108',8,'2024-10-10','2024-10-13',600,'Cash On',501,402,602),
('HB 109',9,'2024-12-03','2024-12-08',600,'Cash On',502,401,601),
('HB 110',10,'2024-09-14','2024-09-19',710,'Nagad',502,401,603),

('HB 111',11,'2024-11-18','2024-11-23',800,'Bkash',502,401,601),
('HB 112',12,'2024-11-11','2024-11-16',3250,'Bkash',503,401,602),
('HB 113',13,'2024-04-25','2024-04-28',3100,'Cash On',503,402,603),
('HB 114',14,'2024-08-20','2024-08-25',3300,'Bkash',503,401,601),
('HB 115',15,'2024-09-20','2024-09-23',880,'Cash On',501,403,603),
('HB 116',16,'2024-05-10','2024-05-15',3300,'Bkash',503,401,602),
('HB 117',17,'2024-01-22','2024-01-27',500,'Cash On',502,401,601),
('HB 118',18,'2024-03-15','2024-03-18',360,'Cash On',501,402,602),
('HB 119',19,'2024-02-15','2024-02-20',3250,'Cash On',503,401,603),
('HB 120',20,'2024-07-10','2024-07-15',1020,'Bkash',502,401,601),

('HB 121',1,'2024-10-02','2024-10-05',780,'Cash On',501,402,601),
('HB 122',21,'2024-10-30','2024-11-05',700,'Nagad',502,401,601),
('HB 123',1,'2024-12-02','2024-12-05',2500,'Bkash',503,402,601),
('HB 124',14,'2024-08-20','2024-08-25',600,'Bkash',502,401,601),
('HB 125',2,'2024-08-02','2024-08-05',560,'Cash On',501,403,602),
('HB 126',16,'2024-05-10','2024-05-15',600,'Bkash',502,401,602),
('HB 127',13,'2024-04-25','2024-04-28',760,'Cash On',501,402,603)

INSERT INTO OrderLineDetails(OrderId,LineDetails,ProductCode,ColorId,Quantity,UnitPrice)Values
('HB 101',1,201,103,1,250),
('HB 101',2,202,105,1,400),

('HB 102',1,203,101,1,500),
('HB 102',2,204,102,1,300),

('HB 103',1,202,102,1,400),
('HB 103',2,205,102,1,220),

('HB 104',1,201,101,1,250),

('HB 105',1,202,102,1,400),
('HB 105',2,203,102,1,500),
('HB 105',3,207,105,1,2500),

('HB 106',1,204,103,2,300),
('HB 106',2,201,102,1,250),

('HB 107',1,204,102,2,300),
('HB 107',2,202,101,1,400),

('HB 108',1,206,101,2,300),

('HB 109',1,203,103,1,500),

('HB 110',1,203,101,2,500),
('HB 110',2,206,102,1,300),

('HB 111',1,202,101,1,400),
('HB 111',2,204,101,1,300),

('HB 112',1,203,103,1,500),
('HB 112',2,201,105,1,250),
('HB 112',3,207,102,1,2500),

('HB 113',1,207,104,1,2500),
('HB 113',2,204,102,2,300),

('HB 114',1,202,105,2,400),
('HB 114',2,207,104,1,2500),

('HB 115',1,205,103,1,220),
('HB 115',2,204,104,2,300),

('HB 116',1,204,104,1,300),
('HB 116',2,203,101,1,500),
('HB 116',3,207,101,1,2500),

('HB 117',1,202,103,1,400),

('HB 118',1,204,101,2,300),

('HB 119',1,201,103,3,250),
('HB 119',2,207,103,1,2500),

('HB 120',1,203,101,1,500),
('HB 120',2,205,101,2,220),

('HB 121',1,203,103,1,500),
('HB 121',2,205,101,2,220),

('HB 122',1,206,101,2,300),

('HB 123',1,207,103,1,2500),

('HB 124',1,203,102,1,500),

('HB 125',1,201,101,2,250),

('HB 126',1,201,104,2,250),

('HB 127',1,206,105,1,300),
('HB 127',2,202,103,1,400)

GO
--- Insert Customer Record
INSERT INTO ClientInfo(ClietFirstName,ClientLastName,
CustomerAddress,City,PhoneNumber,EmergencyContactNo,StatusId)
VALUES
('Anika','Alam','09 UgalChari South 452 Para','Rangamati','(880)1791528850','',3)

--- Delete Customer Record
DELETE FROM ClientInfo WHERE ClietFirstName='Anika'

----Top 5 OrderAmounts Record
SELECT TOP 5 OrderID,OrderTotalAmount,OrderDate
FROM OrderInfo
WHERE OrderTotalAmount>1000
ORDER BY OrderID DESC

----AND,OR Logical Operators
SELECT OrderID,OrderTotalAmount,OrderDate,PaymentMethod
FROM OrderInfo
WHERE (OrderDate <'2024-10-10' AND OrderTotalAmount>1000) OR PaymentMethod='Bkash'

----Join Query 
SELECT OrderID,OrderDate,c.City FROM
OrderInfo AS o JOIN ClientInfo AS c
ON o.ClientId=c.ClientId
WHERE c.City NOT IN('Dhaka','Khulna')
AND o.OrderDate>'2024-01-01'

----Between and AND Operator
SELECT OrderID,DeliveryDate FROM
OrderInfo
WHERE DeliveryDate BETWEEN '2024-05-01' AND '2024-12-01'

----IN Operator with Concatenation
SELECT ClietFirstName+' '+ClientLastName AS ClientName,City 
FROM ClientInfo
WHERE City LIKE 'RA%'

----Like(Selected Word)

SELECT ClietFirstName,City 
FROM ClientInfo
WHERE ClietFirstName LIKE '[a t r z]%'
Order By ClietFirstName ASC

----Like (Selected alphabets)
SELECT ClietFirstName+' '+ClientLastName AS ClientName,City 
FROM ClientInfo
WHERE City LIKE 'R[A-R]%'

---- Like (Not In) Operator
SELECT ClietFirstName+' '+ClientLastName AS ClientName,City 
FROM ClientInfo
WHERE City LIKE 'K[^A-R]%'

----Offset-Fetch
SELECT ClientId,ClietFirstName+' '+ClientLastName AS ClientName,City
FROM ClientInfo
ORDER BY ClientId
OFFSET 10 ROWS FETCH NEXT 10  ROWS ONLY

----Aggregate function
SELECT OrderId,OrderDate,c.ClietFirstName,AVG(OrderTotalAmount) AS AvgAmount
FROM OrderInfo o Join ClientInfo c ON o.ClientId=c.ClientId
GROUP BY OrderId,OrderDate,c.ClietFirstName
HAVING AVG(OrderTotalAmount)>1500

----RollUp 
SELECT City,COUNT(*) AS ClientCount
FROM ClientInfo
GROUP BY City WITH ROLLUP

----Cube 
SELECT City,COUNT(*) AS ClientCount
FROM ClientInfo
WHERE City IN('Dhaka', 'Khulna','Rangpur')
GROUP BY City WITH CUBE

----Grouping Sets 
SELECT City,COUNT(*) AS ClientCount
FROM ClientInfo
WHERE City IN('Dhaka', 'Khulna','Rajshahi')
GROUP BY GROUPING SETS(City)
ORDER BY City DESC

----Over Clause
SELECT OrderId, OrderDate, OrderTotalAmount,
SUM(OrderTotalAmount) OVER (Partition BY OrderDate) AS TotalAmount,
AVG(OrderTotalAmount) OVER (Partition BY OrderDate) AS AvgAmount
FROM OrderInfo
WHERE OrderTotalAmount>1000

----Subquery
SELECT ClietFirstName,City FROM ClientInfo WHERE ClientId IN
(SELECT ClientId FROM OrderInfo)
ORDER BY ClietFirstName

----ANY Operator
SELECT OrderId, OrderDate, OrderTotalAmount
FROM OrderInfo WHERE OrderTotalAmount>ANY
(SELECT OrderTotalAmount FROM OrderInfo WHERE ClientId=1)

----ALL Operator
SELECT OrderId, OrderDate, OrderTotalAmount
FROM OrderInfo WHERE OrderTotalAmount<ALL
(SELECT OrderTotalAmount FROM OrderInfo WHERE ClientId=1)

----Some Operator
SELECT OrderId, OrderDate, OrderTotalAmount
FROM OrderInfo WHERE OrderTotalAmount>SOME
(SELECT OrderTotalAmount FROM OrderInfo WHERE ClientId=1)

----Correlated Subquery
SELECT OrderId, OrderDate, OrderTotalAmount,ClientId
FROM OrderInfo AS OuterOrder WHERE OrderTotalAmount>
(SELECT AVG(OrderTotalAmount) FROM OrderInfo AS InnerOrder
WHERE OuterOrder.ClientId=InnerOrder.ClientId)

----EXISTS Operator
SELECT ClientId,ClietFirstName+' '+ClientLastName Full_Name,City
FROM ClientInfo
WHERE EXISTS
(
SELECT * FROM OrderInfo
WHERE OrderInfo.ClientId=ClientInfo.ClientId
)

----Common Table Expression (CTE)
WITH TotalAmount_Table AS
(
SELECT c.ClietFirstName,c.City,SUM(OrderTotalAmount) As TotalAmount
FROM OrderInfo AS o JOIN ClientInfo c ON o.ClientId=c.ClientId
GROUP BY c.ClietFirstName,c.City
),
MaxAmount_Table AS
(SELECT ta.City, MAX(ta.TotalAmount) AS MaxAmount FROM TotalAmount_Table ta GROUP BY ta.City)

SELECT ta.ClietFirstName,ta.City,ta.TotalAmount,ma.MaxAmount
FROM TotalAmount_Table ta JOIN MaxAmount_Table ma ON ta.City=ma.City



----Test Table(Select Into)
SELECT * INTO ProductTypeArchive FROM ProductType
SELECT * INTO ProductTypeCopy FROM ProductType

SELECT * INTO ClientStatusArchive FROM ClientStatus
SELECT * INTO ClientStatusCopy FROM ClientStatus

SELECT * INTO OrderInfoCopy FROM OrderInfo
WHERE OrderTotalAmount>2000

----Merge
MERGE INTO ProductTypeArchive AS PA
USING ProductTypeCopy AS pc
ON PA.ProductCode = pc.ProductCode
WHEN MATCHED
THEN UPDATE SET
PA.ProductName = pc.ProductName
WHEN NOT MATCHED  
THEN INSERT (ProductCode, ProductName)
VALUES (pc.ProductCode, pc.ProductName);
 
 ----Case
SELECT
    OrderTotalAmount,
    CASE
        WHEN OrderTotalAmount < 1500 THEN 'Low'
        WHEN OrderTotalAmount BETWEEN 1500 AND 2500 THEN 'Medium'
        ELSE 'High'
    END AS OrderStatus
FROM
    OrderInfo
	ORDER BY OrderTotalAmount DESC;
----IIF
SELECT OrderTotalAmount,
IIF(OrderTotalAmount>1500,'High','Low') AS OrderStatus
FROM OrderInfo

---CHOOSE
SELECT ClientId,ClietFirstName,CHOOSE(StatusId,'Frequent Buyers','Occasional Buyers','Potential Buyers')
AS clientStatus FROM ClientInfo 

---ISNULL
SELECT ClientId,ClietFirstName+' '+ClientLastName FullName,
ISNULL(EmergencyContactNo,'No Phone Number') NullNumber FROM ClientInfo
WHERE EmergencyContactNo IS NULL

----COALESCE
SELECT ClietFirstName,EmergencyContactNo,
COALESCE(EmergencyContactNo,'No Number')AS No_Number
FROM ClientInfo 

----GROUPING
SELECT
CASE
WHEN GROUPING(City) = 1 THEN 'All'
ELSE City
END AS CustomerCity,
COUNT(*) AS CustomerNumer
FROM ClientInfo
WHERE City IN ('Dhaka', 'Rangpur','Khulna')
GROUP BY City WITH ROLLUP
ORDER BY City DESC;

---ROW_NUMBER()
SELECT ClientId,ROW_NUMBER() OVER(ORDER BY CustomerFirstName)  
AS RankByName,ClietFirstName FROM ClientInfo

---RANK()
SELECT OrderId,ClietFirstName,OrderTotalAmount,  
RANK() OVER ( ORDER BY OrderTotalAmount DESC) AS RankByAmount
FROM OrderInfo AS O JOIN ClientInfo AS C ON O.ClientId=C.ClientId

---DENSERANK()
SELECT OrderId,OrderTotalAmount,  
DENSE_RANK() OVER ( ORDER BY OrderTotalAmount) AS OrderRank
FROM OrderInfo 

----NTILE
SELECT ClietFirstName,cs.StatusDescription,
NTILE(2) OVER (ORDER BY clientId) AS Group1,
NTILE(3) OVER (ORDER BY clientId) AS Group2,
NTILE(4) OVER (ORDER BY clientId) AS Group3
FROM ClientInfo ci JOIN ClientStatus cs ON ci.StatusId=cs.StatusId

----FIRST_VALUE
SELECT OrderId,OrderTotalAmount,ClientId,
OrderDate,FIRST_VALUE(OrderTotalAmount)
OVER (PARTITION BY ClientId ORDER BY OrderDate) AS FirstAmount
FROM OrderInfo

---LAST_VALUE
SELECT OrderId,OrderTotalAmount,ClientId,OrderDate,
LAST_VALUE(OrderTotalAmount)
OVER (PARTITION BY ClientId ORDER BY OrderDate DESC) AS LastAmount
FROM OrderInfo

---LEAD
SELECT OrderId,DeliveryDate,OrderTotalAmount,ClientId,
LEAD(OrderTotalAmount)
OVER (PARTITION BY ClientId ORDER BY DeliveryDate) AS LeadAmount
FROM OrderInfo

---LAG
SELECT OrderId,OrderDate,OrderTotalAmount,ClientId,
LAG(OrderTotalAmount) OVER (PARTITION BY ClientId ORDER BY OrderDate)
AS LegAmount FROM OrderInfo

--CUME_DIST()
SELECT OrderTotalAmount,
CUME_DIST() OVER (PARTITION BY OrderDate ORDER BY OrderTotalAmount) AS CumeDist
FROM OrderInfo;

----PERCENT_RANK
SELECT OrderTotalAmount,
PERCENT_RANK() OVER (PARTITION BY OrderDate ORDER BY OrderTotalAmount) AS percent_rank
FROM OrderInfo;

----PERCENTILE_DISC
SELECT ClientId,PERCENTILE_DISC(0.5)
WITHIN GROUP (ORDER BY OrderTotalAmount)
OVER (PARTITION BY ClientId) AS PercentileDisc_5
FROM OrderInfo;

---PERCENTILE_CONT
SELECT clientId,OrderTotalAmount,PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY OrderTotalAmount)
OVER (PARTITION BY clientId)
AS PercentileCont_5
FROM OrderInfo;

---CAST
SELECT OrderDate,OrderTotalAmount,
CAST(OrderDate AS varchar) strOrderDate,
CAST(OrderTotalAmount AS varchar) strOrderToatl,
CAST(OrderTotalAmount AS int) intOrderToatl
FROM OrderInfo

---CONVERT
SELECT DeliveryDate,OrderTotalAmount,
CONVERT(varchar,DeliveryDate) strDeliveryDate,
CONVERT(varchar,DeliveryDate,1) strDeliveryDate1,
CONVERT(varchar,DeliveryDate,107) strDeliveryDate2 ,
CONVERT(varchar,OrderTotalAmount) strOrderTotal1,
CONVERT(varchar,OrderTotalAmount,1) strOrderTotal2
FROM OrderInfo

---TRY_CONVERT
SELECT OrderDate,OrderTotalAmount,
TRY_CONVERT(varchar,OrderDate) strOrderDate,
TRY_CONVERT(varchar,OrderDate,1) strOrderDate1,
TRY_CONVERT(varchar,OrderDate,107) strOrderDate2 ,
TRY_CONVERT(varchar,OrderTotalAmount) strOrderTotal1,
TRY_CONVERT(varchar,OrderTotalAmount,107) strOrderTotal2,
TRY_CONVERT(date,'Feb 29 2023') AS InvalidDate
FROM OrderInfo

----SUBSTRING
SELECT ClietFirstName+' '+ClientLastName FullName,PhoneNumber,
RIGHT(PhoneNumber,8) PhoneNumber FROM ClientInfo
WHERE SUBSTRING(PhoneNumber,2,3)=880

-----REPLACE
SELECT ClietFirstName+' '+ClientLastName FullName,EmergencyContactNo,
RIGHT(EmergencyContactNo,10) PhoneNumber,
REPLACE(RIGHT(EmergencyContactNo,14),')','-') Phone FROM ClientInfo
WHERE SUBSTRING(EmergencyContactNo,2,3)=880

-----DatePart
SELECT OrderId,OrderDate,OrderTotalAmount,DATENAME(month,OrderDate) FROM OrderInfo
WHERE DATEPART(month,OrderDate)=10 AND DATEPART(year,OrderDate)=2024

------DATEDIFF
SELECT OrderId,OrderDate,OrderTotalAmount,GETDATE() CurrentDate,
DATEDIFF(day,OrderDate,GETDATE()) DayDiff,
DATEDIFF(month,OrderDate,GETDATE()) MonthDiff,
DATEDIFF(year,OrderDate,GETDATE()) YearDiff
FROM OrderInfo

----DATEADD
SELECT OrderId,DeliveryDate,OrderTotalAmount,DATEADD(month,1,DeliveryDate) NewAddDate,
DATEADD(month,-1,DeliveryDate) NewSubtractDate
FROM OrderInfo

----Search case
SELECT OrderId,OrderDate ,
CASE
WHEN DATEDIFF(MONTH,OrderDate, GETDATE())>4
THEN 'Over 4 months'
WHEN DATEDIFF(MONTH,OrderDate, GETDATE())>0
THEN 'Over 1 month to 4 months'
ELSE 'Current'
END AS dateStatus
FROM OrderInfo

---String Function
SELECT LEN('Mahia Mosarrat') 
SELECT LEN ('  Mahia Mosarrat ') 
SELECT LEFT('Mahia Mosarrat',5) 
SELECT LTRIM (' Mahia Mosarrat') 
SELECT RTRIM ('Mahia Mosarrat ') 
SELECT CONCAT( 'Mahia Mosarrat ',': ','Dhaka') 
SELECT LOWER ( 'Mahia Mosarrat') 
SELECT UPPER ( 'Mahia Mosarrat') 
SELECT CHARINDEX(')', '(880) 193210074') 

---Numeric Function
SELECT ISNUMERIC(-1.25)
SELECT ISNUMERIC('Mahia Mosarrat')

---Date/Time Function
SELECT GETDATE ()
SELECT EOMONTH('2024-05-01')
SELECT EOMONTH('2024-10-01',2) 