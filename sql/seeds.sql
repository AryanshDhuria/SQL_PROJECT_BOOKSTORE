-- Sample Books
INSERT INTO Books VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 10.99, 20),
(2, '1984', 'George Orwell', 'Dystopian', 12.50, 15),
(3, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 15.00, 10);

-- Sample Customers
INSERT INTO Customers VALUES
(101, 'Alice Johnson', 'alice@example.com', 'New York', 'USA'),
(102, 'Bob Smith', 'bob@example.com', 'London', 'UK');

-- Sample Orders
INSERT INTO Orders VALUES
(1001, 101, 1, '2023-10-01', 2, 21.98),
(1002, 102, 2, '2023-10-02', 1, 12.50);
