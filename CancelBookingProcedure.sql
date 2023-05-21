DROP PROCEDURE IF EXISTS CancelBooking;

DELIMITER //

CREATE PROCEDURE CancelBooking(IN bookid INT)
BEGIN
DECLARE BookIDCheck INT DEFAULT NULL;
DECLARE AIcounter INT DEFAULT 0; 

SELECT BookingID FROM Bookings WHERE BookingID = bookid INTO BookIDCheck;

START TRANSACTION;
DELETE FROM Bookings WHERE BookingID = bookid; 

IF BookIDCheck IS NOT NULL THEN 
	commit;
    SELECT CONCAT( "Booking ", bookid, " cancelled") AS Confirmation;
    SET AIcounter = (SELECT MAX(BookingID) +1 FROM Bookings);
    SET @AIreset = CONCAT("ALTER TABLE `LittleLemonDB`.`Bookings` AUTO_INCREMENT = ", AIcounter, ";");
    PREPARE st FROM @AIreset;
    EXECUTE st;
    
ELSE
	rollback;
    SELECT CONCAT("Booking ", bookid, " does not exist; nothing to cancel") AS "Error";
    
END IF;


END // 


DELIMITER ;

CALL CancelBooking(9);
