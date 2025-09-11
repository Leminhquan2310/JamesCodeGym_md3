use classicmodels;

DELIMITER //
DROP PROCEDURE IF EXISTS `getCusById` //
CREATE PROCEDURE getCusById
(IN cusNum int(11))
BEGIN 
SELECT * FROM customers WHERE customerNumber = cusNum;
END //
DELIMITER ;


call getCusById(175);

DELIMITER //
CREATE PROCEDURE getCustomersCountByCity(
	IN in_city varchar(50),
    OUT total int
)
BEGIN 
SELECT count(customerNumber) 
INTO total
FROM customers
WHERE city = in_city;
END //
DELIMITER ;
 
 CALL getCustomersCountByCity('Lyon',@total);
 SELECT @total;
 
 DELIMITER //
 CREATE PROCEDURE SetCounter (
	INOUT counter int,
    IN inc int
 )
 BEGIN 
	SET counter = counter + inc;
END //
DELIMITER ;

SET @counter = 1;
CALL SetCounter(@counter, 1); -- 2
CALL SetCounter(@counter,1); -- 3
CALL SetCounter(@counter,5); -- 8
SELECT @counter; -- 8