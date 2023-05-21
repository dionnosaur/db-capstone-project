DROP PROCEDURE IF EXISTS UpdateBooking;

DELIMITER //

CREATE PROCEDURE UpdateBooking(IN bookid INT, IN bookdate DATE)
BEGIN
DECLARE status INT DEFAULT NULL;

SELECT BookingID FROM Bookings WHERE BookingID = bookid INTO status;

START TRANSACTION;

UPDATE Bookings
SET BookingSlot = bookdate
WHERE BookingID = bookid; 


IF status IS NULL THEN
    SELECT CONCAT("Booking #", bookid, " does not exist; no update was made") AS "Update Status";
    COMMIT;
    
ELSE
    SELECT CONCAT("Booking #", bookid, " has a new booking date of: ", bookdate) AS "Confirmed";
    ROLLBACK;
END IF;

END // 

DELIMITER ;

CALL UpdateBooking(8, "2022-12-17");
