DROP PROCEDURE IF EXISTS CancelOrder;



CREATE PROCEDURE CancelOrder(IN id INT) 
DELETE FROM Orders WHERE OrderID = id;


CALL CancelOrder(1);