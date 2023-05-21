PREPARE GetOrderDetail FROM 'SELECT Orders.OrderID, Orders.Quantity, Orders.BillAmount FROM Orders INNER JOIN Bookings ON Bookings.BookingID = Orders.BookingID WHERE CustomerID = ?';

SET @id = 1;
EXECUTE GetOrderDetail USING @id;