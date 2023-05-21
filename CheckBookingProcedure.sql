DROP PROCEDURE IF EXISTS CheckBooking;


DELIMITER //

CREATE PROCEDURE CheckBooking(IN dt DATE, IN tn INT)
BEGIN 
DECLARE status INT DEFAULT NULL;

SELECT BookingID FROM Bookings WHERE BookingSlot = dt AND TableNo = tn INTO status;

SELECT
CASE 
	WHEN status IS NOT NULL THEN CONCAT("Table ", tn, " is already booked.")
    ELSE CONCAT("Table ", tn, " is available to book.")
    END AS "Booking Status";
END //

DELIMITER ;


CALL CheckBooking("2022-11-14", 3);