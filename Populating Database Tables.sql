#Employees Table
INSERT INTO employees (EmployeeID, Name, Role, Address, Contact_Number, Email, Annual_Salary) VALUES 
(01,'Mario Gollini','Manager','724, Parsley Lane, Old Town, Chicago, IL',351258074,'Mario.g@littlelemon.com','$70,000'), 
(02,'Adrian Gollini','Assistant Manager','334, Dill Square, Lincoln Park, Chicago, IL',351474048,'Adrian.g@littlelemon.com','$65,000'), 
(03,'Giorgos Dioudis','Head Chef','879 Sage Street, West Loop, Chicago, IL',351970582,'Giorgos.d@littlelemon.com','$50,000'), 
(04,'Fatma Kaya','Assistant Chef','132  Bay Lane, Chicago, IL',351963569,'Fatma.k@littlelemon.com','$45,000'), 
(05,'Elena Salvai','Head Waiter','989 Thyme Square, EdgeWater, Chicago, IL',351074198,'Elena.s@littlelemon.com','$40,000'), 
(06,'John Millar','Receptionist','245 Dill Square, Lincoln Park, Chicago, IL',351584508,'John.m@littlelemon.com','$35,000');

#OrderDeliveryStatus Table
INSERT INTO OrderDeliveryStatus(DeliveryStatusID, OrderID, Status, DeliveryDate) VALUES
(1, 1, "Paid", "2023-05-15"),
(2, 2, "Paid", "2023-05-15"),
(3, 3, "Paid", "2023-05-15"),
(4, 4, "Paid", "2023-05-15");

#Orders Table
INSERT INTO Orders(OrderID, MenuID, BookingID, BillAmount, Quantity) VALUES
(1, 3, 2, 24,3),
(2, 6, 1, 5, 1),
(3, 14, 3, 90, 3),
(4, 17, 4, 34, 2);

#Menu Table
INSERT INTO Menu (MenuID, Cuisine, ItemName, Type, Price) VALUES
(1,'Greek', 'Olives','Starters',5),
(2, 'Italian', 'Flatbread','Starters', 5),
(3, 'Italian', 'Minestrone', 'Starters', 8),
(4, 'Italian', 'Tomato bread','Starters', 8),
(5, 'Turkish','Falafel', 'Starters', 7),
(6, 'Mediterranean', 'Hummus', 'Starters', 5),
(7, 'Greek','Greek salad', 'Main Courses', 15),
(8, 'Turkish','Bean soup', 'Main Courses', 12),
(9, 'Italian', 'Pizza', 'Main Courses', 15),
(10, 'Greek', 'Greek yoghurt','Desserts', 7),
(11, 'American','Ice cream', 'Desserts', 6),
(12, 'American', 'Cheesecake', 'Desserts', 4),
(13, 'Greek','Athens White wine', 'Drinks', 25),
(14, 'Greek', 'Corfu Red Wine', 'Drinks', 30),
(15, 'Turkish','Turkish Coffee', 'Drinks', 10),
(16, 'Turkish', 'Turkish Coffee', 'Drinks', 10),
(17, 'Polish','Kielbasa', 'Main Courses', 17);

#Customers Table
INSERT INTO Customers(CustomerID, PhoneNumber, FirstName, LastName, Email) VALUES
(1, 9092345432, "Anna", "Iversen", "aiversen@email.com"),
('2', '6264872343', 'Joakim	', 'Adams', 'jadams@email.net'),
('3', '2865911381', 'Vanessa	', 'McCarthy', 'vmccarthy1995@gmail.com'),
('4', '8487834050 ', 'Marcos', 'Romero'),
('5', '5004394352', 'Hiroki', 'Yamane', 'hirokiy23@yahoo.com'),
('6', '4328976543', 'Angela', 'Wilson');

#Bookings Table
INSERT INTO Bookings(BookingID, CustomerID, TableNo, BookingSlot, EmployeeID) VALUES 
('1', '2', '12', '2023-05-15 19:00:00', '1'),
('2', '1', '11', '2023-05-15 19:00:00', '1'),
('3', '5', '19', '2023-05-15 15:00:00', '3'),
('4', '3', '15', '2023-05-15 17:30:00', '4'),
('5', '4', '5', '2023-05-15 18:30:00', '2'),
('6', '6', '8', '2023-05-15 20:00:00', '5');
