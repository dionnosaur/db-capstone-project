DROP PROCEDURE IF EXISTS AddValidBooking;

DELIMITER //


CREATE PROCEDURE AddValidBooking(IN dt DATE, IN tabl INT, IN custID INT)
BEGIN
DECLARE status INT DEFAULT NULL;

SELECT BookingID FROM Bookings WHERE BookingSlot = dt AND TableNo = tabl INTO status;

START TRANSACTION;

INSERT INTO Bookings(CustomerID, TableNo, BookingSlot) VALUES
    (custID,tabl,dt);

IF status IS NULL THEN
    SELECT "Booking Confirmed" AS "Booking Status";
    COMMIT;
    
ELSE
	SELECT CONCAT("Table ", tabl, " is already booked; Booking Canceled") AS "Booking Status";
    ROLLBACK;
END IF;
END //

DELIMITER ; 

CALL AddValidBooking("2022-11-14", 3, 2);