-- 1. Revenue by Genre: What categories make the most money?
SELECT b.Genre, SUM(o.Total_Amount) as Total_Revenue
FROM Books b
JOIN Orders o ON b.Book_ID = o.Book_ID
GROUP BY b.Genre
ORDER BY Total_Revenue DESC;

-- 2. Top-Selling Authors: Who generates the most sales?
SELECT b.Author, COUNT(o.Order_ID) as Books_Sold, SUM(o.Total_Amount) as Revenue
FROM Books b
JOIN Orders o ON b.Book_ID = o.Book_ID
GROUP BY b.Author
ORDER BY Revenue DESC
LIMIT 5;

-- 3. Customer Loyalty: Find customers who spent more than $50
SELECT c.Customer_Name, SUM(o.Total_Amount) AS Total_Spent
FROM Customers c
JOIN Orders o ON c.Customer_ID = o.Customer_ID
GROUP BY c.Customer_ID, c.Customer_Name
HAVING Total_Spent > 50.00
ORDER BY Total_Spent DESC;

-- 4. Dead Stock Alert: Books that have never been sold
SELECT b.Title, b.Stock_Quantity
FROM Books b
LEFT JOIN Orders o ON b.Book_ID = o.Book_ID
WHERE o.Order_ID IS NULL;
