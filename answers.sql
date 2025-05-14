### Question 1 Achieving 1NF (First Normal Form) 🛠️

CREATE TABLE ProductDetail (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    FOREIGN KEY ProductID REFERENCES Product(ProductID),
);

CREATE TABLE Product(
    ProductID INT PRIMARY KEY,
    Product VARCHAR(255),
);

### Question 2 Achieving 2NF (Second Normal Form) 🧩

CREATE TABLE Order (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
);

CREATE TABLE OrderDetails (
    OrderID INT,
    Product VARCHAR(255),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Order(OrderID),
);