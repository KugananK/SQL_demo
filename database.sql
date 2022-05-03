CREATE TABLE Product(
Product_id INT NOT NULL UNIQUE AUTO_INCREMENT,
GameName varchar(100) NOT NULL,
GameGenre varchar(20) NOT NULL,
GamePrice decimal NOT NULL,
Stock INT NOT NULL,
AgeRating INT NOT NULL,
Platform varchar(15) NOT NULL,
FirstHand INT(1) NOT NULL,
PRIMARY KEY(Product_id)
);

CREATE TABLE OrderTable(
Order_id INT NOT NULL UNIQUE AUTO_INCREMENT,
TimePlaced TIMESTAMP NOT NULL,
OrderValue DECIMAL NOT NULL,
ProductsOrdered varchar(255),
fk_product_id INT UNIQUE,
PRIMARY KEY(Order_id),
FOREIGN KEY(fk_product_id) REFERENCES Product (Product_id)
);

CREATE TABLE Customer (
Customer_id INT NOT NULL UNIQUE AUTO_INCREMENT,
FirstName varchar(20) NOT NULL,
LastName varchar(20) NOT NULL,
Email varchar(60) NOT NULL,
OrderHistory varchar(255),
BankDetails varchar(255),
DateOfBirth DATE NOT NULL,
HouseNumber INT NOT NULL,
AddressLine1 varchar(255) NOT NULL,
City varchar(255),
Postcode varchar(8) NOT NULL,
fk_order_id INT UNIQUE,
PRIMARY KEY(Customer_id),
FOREIGN KEY(fk_order_id) REFERENCES OrderTable (Order_id)
);