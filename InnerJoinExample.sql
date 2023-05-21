SELECT Customers.CustomerID, CONCAT(Customers.FirstName, " ", Customers.LastName) AS "Customer Full Name", Orders.OrderID, Orders.BillAmount, Menu.Cuisine, Menu.ItemName
FROM Customers
INNER JOIN Bookings ON Customers.CustomerID = Bookings.CustomerID
INNER JOIN Orders ON Orders.BookingID = Bookings.BookingID
INNER JOIN Menu ON Orders.MenuID = Menu.MenuID
WHERE Orders.BillAmount > 150;