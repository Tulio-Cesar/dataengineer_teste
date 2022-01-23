CREATE TABLE production_Product(
    ProductID integer PRIMARY KEY,
    Name varchar(50),
    ProductNumber varchar(50),
    MakeFlag smallint,
    FinishedGoodsFlag smallint,
    Color varchar(50),
    SafetyStockLevel integer,
    ReorderPoint integer,
    StandardCost money,
    ListPrice money,
    Size varchar(50),
    SizeUnitMeasureCode varchar(10),
    WeightUnitMeasureCode varchar(10),
    Weight varchar(50),
    DaysToManufacture smallint,
    ProductLine varchar(10),
    Class varchar(10),
    Style varchar(10),
    ProductSubcategoryID varchar(50),
    ProductModelID varchar(50),
    SellStartDate date,
    SellEndDatevarchar varchar(50),
    DiscontinuedDate varchar(50),
    rowguid varchar(50),
    ModifiedDate date
);




CREATE TABLE sales_SpecialOfferProduct (
    SpecialOfferID smallint,
	productID integer,
	rowguid varchar(50),
	ModifiedDate date,
	FOREIGN KEY (productID) REFERENCES production_product (productid)
);




CREATE TABLE sales_salesorderdetail (
    SalesOrderID integer,
	SalesOrderDetailID serial PRIMARY KEY,
	CarrierTrackingNumber varchar(50),
	OrderQty integer,
	ProductID smallint,
	SpecialOfferID smallint,
	UnitPrice money,
	UnitPriceDiscount money,
	LineTotal money,
	rowguid varchar(50),
	ModifiedDate date
);




CREATE TABLE person_person(
    BusinessEntityID integer PRIMARY KEY,
    PersonType varchar(50),
    NameStyle varchar(50),
    Title varchar(50),
    FirstName varchar(50),
    MiddleName varchar(50),
    LastName varchar(50),
    Suffix varchar(50),
    EmailPromotion smallint,
    AdditionalContactInfo varchar (2000),
    Demographics varchar(1000),
    rowguid varchar(50),
    ModifiedDate date
);




CREATE TABLE sales_Customer (
    CustomerID integer PRIMARY KEY,
	PersonID varchar(50),
	StoreID varchar(50),
	TerritoryID smallint,
	AccountNumber varchar(50),
	rowguid varchar(50),
	ModifiedDate date
);




CREATE TABLE sales_SalesOrderHeader(
	SalesOrderID integer PRIMARY KEY,
	RevisionNumber smallint,
	OrderDate date,
	DueDate date,
	ShipDate date,
	Status smallint,
	OnlineOrderFlag smallint,
	SalesOrderNumber varchar(50),
	PurchaseOrderNumber varchar(50),
	AccountNumber varchar(50),
	CustomerID integer,
	SalesPersonID varchar(10),
	TerritoryID smallint,
	BillToAddressID integer,
	ShipToAddressID integer,
	ShipMethodID smallint,
	CreditCardID varchar(50),
	CreditCardApprovalCode varchar(50),
	CurrencyRateID varchar(50),
	SubTotal money,
	TaxAmt money,
	Freight money,
	TotalDue money,
	Comment varchar(50),
	rowguid varchar(50),
	ModifiedDate date
);