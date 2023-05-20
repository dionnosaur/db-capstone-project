CREATE VIEW `OrdersView` AS 
SELECT OrderID, Quantity, BillAmount 
FROM Orders 
WHERE Quantity > 2;