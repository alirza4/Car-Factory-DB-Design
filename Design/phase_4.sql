INSERT INTO Customers VALUES('123456781011', ' sherlock', 'holmes', '+44796268462', 'London', 'London', ' 212 Baker Street','22');

INSERT INTO Car_Orders(VIN, customer_nid) VALUES ('44433410', '1234567810');

UPDATE Customers
SET phone_number = '+447342780080'
WHERE national_code = '1234567810';

DELETE FROM Customers WHERE NOT EXISTS(
	SELECT * 
    FROM Car_Orders, Spare_Part_Orders
    WHERE Customers.national_code = Car_Orders.customer_national_code OR Customers.national_code = Spare_Part_Orders.customer_national_code
);