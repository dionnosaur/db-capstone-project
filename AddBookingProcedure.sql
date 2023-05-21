DROP PROCEDURE IF EXISTS AddBooking;


DELIMITER //


# Removed Booking ID from Parameters because Bookings Table Primary Key is set to Auto Increment 
CREATE PROCEDURE AddBooking(IN custid INT, IN tabl INT, IN bookdate DATE)
BEGIN
DECLARE status INT DEFAULT NULL;

SELECT BookingID FROM Bookings WHERE BookingSlot = bookdate AND TableNo = tabl INTO status;

START TRANSACTION;

INSERT INTO Bookings(CustomerID, TableNo, BookingSlot) VALUES
    (custid,tabl,bookdate);

IF status IS NULL THEN
    SELECT "New booking added" AS "Confirmed";
    COMMIT;
    
ELSE
	SELECT CONCAT("Table ", tabl, " is already booked; Booking Canceled") AS "Booking Status";
    ROLLBACK;
END IF;
END // 

DELIMITER ;

CALL AddBooking(3, 4, "2022-12-30");
