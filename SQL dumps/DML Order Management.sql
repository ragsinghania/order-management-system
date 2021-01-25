INSERT INTO `ordermanagementsystem`.`customers` (`customerID`, `name`, `mobilePhone`, `street`, `city`, `state`, `pincode`) VALUES ('001', 'Jimmie', '948458485', 'ABC', 'Nagpur', 'Maharastra', '353533');
INSERT INTO `ordermanagementsystem`.`customers` (`customerID`, `name`, `mobilePhone`, `street`, `city`, `state`, `pincode`) VALUES ('002', 'Bill', '794874444', 'XYZ street', 'Delhi', 'Delhi', '334544');
INSERT INTO `ordermanagementsystem`.`customers` (`customerID`, `name`, `mobilePhone`, `street`, `city`, `state`, `pincode`) VALUES ('003', 'Sam', '787766296', 'Food street', 'Mumbai', 'Maharastra', '877333');

INSERT INTO `ordermanagementsystem`.`PurchaseOrder` (`purchaseID`, `orderDate`, `shipDate`) VALUES ('101', '2020-02-02', '2020-02-03');
INSERT INTO `ordermanagementsystem`.`PurchaseOrder` (`purchaseID`, `orderDate`, `shipDate`) VALUES ('102', '2021-02-21', '2020-02-22');
INSERT INTO `ordermanagementsystem`.`PurchaseOrder` (`purchaseID`, `orderDate`, `shipDate`) VALUES ('103', '2021-03-02', '2020-03-03');
insert into purchaseorder(purchaseID, orderDate, shipDate) values(104,'2019-09-09','2019-09-10');

insert into customer_purchaseOrder(customerID, purchaseID) values(1,101);
insert into customer_purchaseOrder(customerID, purchaseID) values(1,102);
insert into customer_purchaseOrder(customerID, purchaseID) values(2,103);

INSERT INTO `ordermanagementsystem`.`stockItem` (`stockItemID`, `itemDescription`, `itemPrice`, `quantity`, `unit`) VALUES ('501', 'Maggi', '12', '50', 'NUMBER');
INSERT INTO `ordermanagementsystem`.`stockItem` (`stockItemID`, `itemDescription`, `itemPrice`, `quantity`, `unit`) VALUES ('502', 'Milk', '20', '50', 'GALLONS');
INSERT INTO `ordermanagementsystem`.`stockItem` (`stockItemID`, `itemDescription`, `itemPrice`, `quantity`, `unit`) VALUES ('503', 'Oranges', '50', '150', 'KG');
INSERT INTO `ordermanagementsystem`.`stockItem` (`stockItemID`, `itemDescription`, `itemPrice`, `quantity`, `unit`) VALUES ('504', 'Apple', '100', '50', 'GRAMS');


INSERT INTO `ordermanagementsystem`.`orderItem` (`orderID`, `stockItemID`, `numberOfItems`) VALUES ('1001', '501', '10');
INSERT INTO `ordermanagementsystem`.`orderItem` (`orderID`, `stockItemID`, `numberOfItems`) VALUES ('1002', '502', '30');
INSERT INTO `ordermanagementsystem`.`orderItem` (`orderID`, `stockItemID`, `numberOfItems`) VALUES ('1003', '501', '15');
INSERT INTO `ordermanagementsystem`.`orderItem` (`orderID`, `stockItemID`, `numberOfItems`) VALUES ('1004', '504', '20');

insert into PurchaseOrder_OrderItem (orderID, PurchaseID) values (1001,101);
insert into PurchaseOrder_OrderItem (orderID, PurchaseID) values (1002,101);
insert into PurchaseOrder_OrderItem (orderID, PurchaseID) values (1003,101);
insert into PurchaseOrder_OrderItem (orderID, PurchaseID) values (1004,102);


