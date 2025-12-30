CREATE TABLE Books (
    Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Price NUMERIC(10, 2),
    Stock INT
	);

CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50),
    Country VARCHAR(150)
);


CREATE TABLE Orders (
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT,
    Total_Amount NUMERIC(10, 2)
);


SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;



-- 1) Retrieve all books in the "Fiction" genre:
SELECT * FROM BOOKS 
WHERE Genre='Fiction';


-- 2) Find books published after the year 1950:
SELECT * FROM BOOKS
WHERE published_year>1950;

-- 3) List all customers from the Canada:
SELECT * FROM CUSTOMERS 
WHERE country='Canada';

-- 4) Show orders placed in November 2023:
SELECT * FROM Orders 
WHERE order_date Between '2023-11-01' and '2023-11-30';

-- 5) Retrieve the total stock of books available:
SELECT SUM(stock) from books as total_stocks;

-- 6) Find the details of the most expensive book:
SELECT *   from books order by price desc LIMIT 1 ;

-- 7) Show all customers who ordered more than 1 quantity of a book:
SELECT * FROM orders 
where quantity >1;

-- 8) Retrieve all orders where the total amount exceeds $20:
SELECT * FROM orders 
where total_amount>20;

-- 9) List all genres available in the Books table:
SELECT genre from books
GROUP BY genre;

-- 10) Find the book with the lowest stock:
SELECT * from books order by stock limit 1;

-- 11) Calculate the total revenue generated from all orders:
SELECT SUM (total_amount) AS Revenue from orders;

-- Advance Questions : 

-- 1) Retrieve the total number of books sold for each genre:
SELECT b.genre,SUM(o.quantity) AS Total_Books_sold  from books b
join orders o
on b.book_id= o.book_id
GROUP BY genre;


-- 2) Find the average price of books in the "Fantasy" genre:
SELECT AVG(price) AS Average_price  from books 

WHERE genre = 'Fantasy';


-- 3) List customers who have placed at least 2 orders:
SELECT customer_id, COUNT(order_id) AS ORDER_COUNT
FROM orders
GROUP BY customer_id
Having COUNT(order_id)>=2;


-- 4) Find the most frequently ordered book:
SELECT o.Book_id, b.title, COUNT(o.order_id) AS ORDER_COUNT
FROM orders o
JOIN books b ON o.book_id=b.book_id
GROUP BY o.book_id, b.title
ORDER BY ORDER_COUNT DESC LIMIT 1;




-- 5) Show the top 3 most expensive books of 'Fantasy' Genre :
SELECT * from books
WHERE genre='Fantasy'
ORDER BY  price DESC LIMIT 3;




-- 6) Retrieve the total quantity of books sold by each author:
SELECT author, SUM(quantity) AS Books_sold from orders o
join books b 
on b.book_id=o.book_id
GROUP BY author;


-- 7) List the cities where customers who spent over $30 are located:

SELECT  distinct c.city from customers c 
join orders o
on c.customer_id=o.customer_id
where total_amount>30;



-- 8) Find the customer who spent the most on orders:
SELECT c.name, SUM(o.total_amount) AS total_spent from customers c
join orders o
on c.customer_id=o.customer_id
GROUP BY c.name
Order by total_spent desc limit 1;





--9) Calculate the stock remaining after fulfilling all orders
SELECT b.book_id, b.title, b.stock, COALESCE(SUM(o.quantity),0) AS Order_quantity,  
b.stock- COALESCE(SUM(o.quantity),0) AS Remaining_Quantity
FROM books b
LEFT JOIN orders o ON b.book_id=o.book_id
GROUP BY b.book_id ORDER BY b.book_id;


