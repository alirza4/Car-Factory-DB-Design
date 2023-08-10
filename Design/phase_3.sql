-- INSERT DATA INTO CUSTOMERS TABLE
INSERT INTO Customers (nid, first_name, last_name, phone_number, province, city, street, house_number) VALUES ('3060609632', 'alirezan', 'nematii', '09025674304', 'kerman', 'sirjan', 'talaghani','1');
INSERT INTO Customers (nid, first_name, last_name, phone_number, province, city, street, house_number) VALUES ('3060609631', 'alirezam', 'nematiq', '09025672404', 'yazd', 'yazd', 'fahmideh','22');
INSERT INTO Customers (nid, first_name, last_name, phone_number, province, city, street, house_number) VALUES ('3060609630', 'alirezab', 'nematiw', '09025684404', 'kerman', 'sirjan', 'emam','14');
INSERT INTO Customers (nid, first_name, last_name, phone_number, province, city, street, house_number) VALUES ('3060609633', 'alirezav', 'nematie', '09025674400', 'yazd', 'yazd', 'motaharo','9');
INSERT INTO Customers (nid, first_name, last_name, phone_number, province, city, street, house_number) VALUES ('3060609634', 'alirezac', 'nematir', '09025674407', 'kerman', 'kerman', 'soleimani','18');
INSERT INTO Customers (nid, first_name, last_name, phone_number, province, city, street, house_number) VALUES ('3060609635', 'alirezax', 'nematit', '09025674433', 'yazd', 'yazd', 'Ferdowsi','2');
INSERT INTO Customers (nid, first_name, last_name, phone_number, province, city, street, house_number) VALUES ('3060609636', 'alirezaz', 'nematiy', '09025674422', 'kerman', 'baft', 'Chamrun','77');
INSERT INTO Customers (nid, first_name, last_name, phone_number, province, city, street, house_number) VALUES ('3060609637', 'alirezaa', 'nematiu', '09025674411', 'yazd', 'yazd', 'shahi','63');
INSERT INTO Customers (nid, first_name, last_name, phone_number, province, city, street, house_number) VALUES ('3060609638', 'alirezaqq', 'nematioo', '09025674499', 'tehran', 'tehran', 'sadeghi','32');
INSERT INTO Customers (nid, first_name, last_name, phone_number, province, city, street, house_number) VALUES ('3060609639', 'alirezaerr', 'nematipp', '09025674424', 'tehran', 'tehran', 'rasht','5');

-- INSERT DATA INTO SUPPLIERS TABLE
INSERT INTO Suppliers(supplier_name, start_date, end_date, manager, province, city, street, house_number) VALUES('benz', '2022-01-02', '2024-12-05', 'abbas masoomi', 'kerman', 'sirjan', 'qaem','9');
INSERT INTO Suppliers(supplier_name, start_date, end_date, manager, province, city, street, house_number) VALUES('Honda', '2023-01-01', '2026-11-10', 'Ali khajooei','kerman', 'sirjan', 'ebn sina','24');
INSERT INTO Suppliers(supplier_name, start_date, end_date, manager, province, city, street, house_number) VALUES('Cruse', '2021-01-06', '2023-06-09', 'mohammad nemati ', 'yazd', 'yazd', 'emam','65');
INSERT INTO Suppliers(supplier_name, start_date, end_date, manager, province, city, street, house_number) VALUES('ferari', '2022-03-14', '2024-01-12', 'reza roohi', 'tehran', 'tehran', 'rasht','15');

-- INSERT DATA INTO SPARE_PARTS TABLE
INSERT INTO Spare_Parts(spare_part_name, price, stock, supid) VALUES ('Airbag', 20000.0, 10, 1);
INSERT INTO Spare_Parts(spare_part_name, price, stock, supid) VALUES ('Brake_pad', 11000.0, 5, 1);
INSERT INTO Spare_Parts(spare_part_name, price, stock, supid) VALUES ('Brake_light', 2000.0, 25, 2);
INSERT INTO Spare_Parts(spare_part_name, price, stock, supid) VALUES ('Bumper', 30000.0, 70, 2);
INSERT INTO Spare_Parts(spare_part_name, price, stock, supid) VALUES ('Dashboard', 46000.0, 15, 3);
INSERT INTO Spare_Parts(spare_part_name, price, stock, supid) VALUES ('Fender', 19000.0, 12, 3);
INSERT INTO Spare_Parts(spare_part_name, price, stock, supid) VALUES ('Tire', 12000.0, 4, 2);
INSERT INTO Spare_Parts(spare_part_name, price, stock, supid) VALUES ('Hood', 42000.0, 3, 1);

-- INSERT DATA INTO COLORS TABLE
INSERT INTO Colors(color_name) VALUES ('green');
INSERT INTO Colors(color_name) VALUES ('red');
INSERT INTO Colors(color_name) VALUES ('white');
INSERT INTO Colors(color_name) VALUES ('black');

-- INSERT DATA INTO CARS TABLE
INSERT INTO Cars(VIN, model, brand, gearbox, cid) VALUES('44422410', 'Tip 2', 'pejo', 'Automatic', 2);
INSERT INTO Cars(VIN, model, brand, gearbox, cid) VALUES('44422411', 'Tip 5', 'pejo', 'Automatic', 3);
INSERT INTO Cars(VIN, model, brand, gearbox, cid) VALUES('44422412', 'Tip 2', 'pejo', 'Automatic', 4);
INSERT INTO Cars(VIN, model, brand, gearbox, cid) VALUES('44422413', 'Tip 5', 'pejo', 'Manual', 3);
INSERT INTO Cars(VIN, model, brand, gearbox, cid) VALUES('44422414', 'Tip 2', 'pejo', 'Automatic', 4);
INSERT INTO Cars(VIN, model, brand, gearbox, cid) VALUES('44422415', 'Tip 5', 'pejo', 'Manual', 3);

INSERT INTO Cars(VIN, model, brand, gearbox, cid) VALUES('44433410', 'Tip 2', 'Pride', 'Manual', 4);
INSERT INTO Cars(VIN, model, brand, gearbox, cid) VALUES('44433411', 'Tip 2', 'Pride', 'Manual', 4);
INSERT INTO Cars(VIN, model, brand, gearbox, cid) VALUES('44433412', 'Tip 2', 'Pride', 'Manual', 3);
INSERT INTO Cars(VIN, model, brand, gearbox, cid) VALUES('44433413', 'Tip 3', 'Pride', 'Manual', 3);
INSERT INTO Cars(VIN, model, brand, gearbox, cid) VALUES('44433414', 'Tip 3', 'Pride', 'Automatic', 3);
INSERT INTO Cars(VIN, model, brand, gearbox, cid) VALUES('44433415', 'Tip 3', 'Pride', 'Automatic', 2);

-- INSERT DATA INTO CAR_SPARE_PARTS TABLE
INSERT INTO Car_Spare_Parts(VIN, spid) VALUES ('44422410', 2);
INSERT INTO Car_Spare_Parts(VIN, spid) VALUES ('44422411', 1);
INSERT INTO Car_Spare_Parts(VIN, spid) VALUES ('44422410', 4);
INSERT INTO Car_Spare_Parts(VIN, spid) VALUES ('44422412', 4);

INSERT INTO Car_Spare_Parts(VIN, spid) VALUES ('44433410', 6);
INSERT INTO Car_Spare_Parts(VIN, spid) VALUES ('44433415', 1);
INSERT INTO Car_Spare_Parts(VIN, spid) VALUES ('44433415', 2);
INSERT INTO Car_Spare_Parts(VIN, spid) VALUES ('44433415', 3);

-- INSERT INTO CAR_ORDERS TABLE
INSERT INTO Car_Orders(VIN, customer_nid) VALUES ('44433410', '3060609632');
INSERT INTO Car_Orders(VIN, customer_nid) VALUES ('44422410', '3060609631');

-- INSERT INTO SPARE_PART_ORDERS TABLE
INSERT INTO Spare_Part_Orders(spid, customer_nid) VALUES (1, '3060609630');
INSERT INTO Spare_Part_Orders(spid, customer_nid) VALUES (4, '3060609633');