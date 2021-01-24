CREATE TABLE `Customers` (
  `customerID` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `mobilePhone` int NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` int NOT NULL
);

CREATE TABLE `PurchaseOrder` (
  `purchaseID` int PRIMARY KEY AUTO_INCREMENT,
  `orderDate` date NOT NULL,
  `shipDate` date
);

CREATE TABLE `Customer_PurchaseOrder` (
  `customerID` int,
  `purchaseID` int
);

CREATE TABLE `OrderItem` (
  `orderID` int PRIMARY KEY AUTO_INCREMENT,
  `stockItemID` int,
  `numberOfItems` int NOT NULL
);

CREATE TABLE `StockItem` (
  `stockItemID` int PRIMARY KEY AUTO_INCREMENT,
  `itemDescription` varchar(255) NOT NULL,
  `itemPrice` double NOT NULL,
  `quantity` double NOT NULL,
  `unit` ENUM ('KG', 'GALLONS', 'NUMBER', 'GRAMS')
);

CREATE TABLE `PurchaseOrder_OrderItem` (
  `orderID` int,
  `purchaseID` int
);

ALTER TABLE `Customer_PurchaseOrder` ADD FOREIGN KEY (`customerID`) REFERENCES `Customers` (`customerID`);

ALTER TABLE `Customer_PurchaseOrder` ADD FOREIGN KEY (`purchaseID`) REFERENCES `PurchaseOrder` (`purchaseID`);

ALTER TABLE `OrderItem` ADD FOREIGN KEY (`stockItemID`) REFERENCES `StockItem` (`stockItemID`);

ALTER TABLE `PurchaseOrder_OrderItem` ADD FOREIGN KEY (`orderID`) REFERENCES `OrderItem` (`orderID`);

ALTER TABLE `PurchaseOrder_OrderItem` ADD FOREIGN KEY (`purchaseID`) REFERENCES `PurchaseOrder` (`purchaseID`);
