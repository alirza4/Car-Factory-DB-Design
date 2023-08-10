-- A
CREATE VIEW supplier_supplies AS 
SELECT s.Id AS supid, s.supplier_name, s.start_date, s.end_date, s.manager_name, s.province, 
s.city, s.street, sp.id AS spid, sp.spare_part_name, sp.price, sp.stock
FROM Suppliers AS s INNER JOIN Spare_Parts AS sp
ON s.Id = Spare_Parts.supid;

-- B
CREATE VIEW customer_car_orders AS 
SELECT * FROM customers INNER JOIN car_orders 
ON customers.nid = car_orders.customer_nid;

CREATE VIEW customer_spare_part_orders AS
SELECT * FROM customers INNER JOIN spare_part_orders
ON customers.nid = spare_part_orders.customer_nid;

CREATE VIEW customer_orders AS
SELECT cco.national_code, cco.first_name, cco.last_name, cco.phone_number, cco.province, cco.city, cco.street, cco.Id AS car_order_id, cco.VIN, cspo.Id AS spare_part_order_id, cspo.spare_part_id 
FROM customer_car_orders AS cco
LEFT JOIN customer_spare_part_orders AS cspo ON cco.national_code = cspo.national_code
UNION
SELECT cspo.nid, cspo.first_name, cspo.last_name, cspo.phone_number, cspo.province, cspo.city , cspo.street, cspo.house_number, cco.Id AS car_order_id, cco.VIN,  cspo.Id AS spid, cspo.spid
FROM customer_car_orders AS cco
RIGHT JOIN customer_spare_part_orders AS cspo ON cco.nid = cspo.nid;


-- C
CREATE VIEW car_colors AS 
SELECT c.VIN, colors.color_name 
FROM cars AS c INNER JOIN colors 
ON c.cid = colors.Id;

CREATE VIEW used_spare_parts AS 
SELECT sp.Id AS spid, sp.spare_part_name, csp.VIN 
FROM spare_parts AS sp INNER JOIN car_spare_parts AS csp
ON sp.Id = csp.spid;

CREATE VIEW car_and_spare_parts AS
SELECT c.VIN, c.brand, c.model, c.gearbox, c.cid, usp.spare_part_name
FROM cars AS c
LEFT JOIN used_spare_parts AS usp ON c.VIN = usp.VIN
UNION
SELECT c.VIN, c.brand, c.model, c.gearbox, c.cid, usp.spare_part_name
FROM cars AS c
RIGHT JOIN used_spare_parts AS usp ON c.VIN = usp.VIN;

CREATE VIEW model_brand_car AS
SELECT casp.VIN, casp.brand, casp.model, casp.gearbox, casp.spare_part_name, cc.color_name 
FROM car_and_spare_parts AS casp INNER JOIN car_colors AS cc
ON casp.VIN = cc.VIN;