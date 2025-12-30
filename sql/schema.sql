-- Create the Books table
CREATE TABLE Books (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,
    Genre VARCHAR(100),
    Price DECIMAL(10, 2) NOT NULL,
    Stock_Quantity INT DEFAULT 0
);

-- Create the Customers table
CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    City VARCHAR(100),
    Country VARCHAR(100)
);

-- Create the Orders table with Foreign Keys
CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Book_ID INT,
    Order_Date DATE NOT NULL,
    Quantity INT NOT NULL,
    Total_Amount DECIMAL(10, 2) NOT NULL,
    CONSTRAINT FK_Customer FOREIGN KEY (Customer_ID) 
        REFERENCES Customers(Customer_ID) ON DELETE CASCADE,
    CONSTRAINT FK_Book FOREIGN KEY (Book_ID) 
        REFERENCES Books(Book_ID) ON DELETE CASCADE
);
