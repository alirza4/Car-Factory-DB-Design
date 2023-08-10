CREATE TABLE Suppliers(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name NVARCHAR(50) NOT NULL UNIQUE,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    manager NVARCHAR(50) NOT NULL,
    province NVARCHAR(50) NOT NULL,
    city NVARCHAR(50) NOT NULL,
    street NVARCHAR(50) NOT NULL,
    house_number NVARCHAR(20) NOT NULL
);

CREATE TABLE Customers(
	nid NVARCHAR(20) PRIMARY KEY,
    first_name NVARCHAR(50) NOT NULL,
    last_name NVARCHAR(50) NOT NULL,
    phone_number NVARCHAR(20) NOT NULL,
    province NVARCHAR(50) NOT NULL,
    city NVARCHAR(50) NOT NULL,
    street NVARCHAR(50) NOT NULL,
    house_number NVARCHAR(20) NOT NULL
);

CREATE TABLE Colors(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    color_name NVARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Spare_Parts(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    spare_part_name NVARCHAR(50) NOT NULL,
    price NUMERIC(10, 2) NOT NULL,
    stock INT NOT NULL DEFAULT 0,
    supid INT,
    FOREIGN KEY(supid) REFERENCES Suppliers(Id)
);

CREATE TABLE Cars(
	VIN CHAR(8) PRIMARY KEY,
    brand NVARCHAR(50) NOT NULL,
    model NVARCHAR(50) NOT NULL,
    gearbox NVARCHAR(50) CHECK(GearBox IN ('Automatic', 'Manual')),
    cid INT,
    FOREIGN KEY(cid) REFERENCES Colors(Id)
);

CREATE TABLE Car_Orders(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    VIN CHAR(8),
    customer_nid NVARCHAR(20),
	FOREIGN KEY(VIN) REFERENCES Cars(VIN),
    FOREIGN KEY(customer_nid) REFERENCES Customers(nid)
);

CREATE TABLE Spare_Part_Orders(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    spid INT,
    customer_nid NVARCHAR(20),
	FOREIGN KEY(spid) REFERENCES Spare_Parts(Id),
    FOREIGN KEY(customer_nid) REFERENCES Customers(nid)
);

CREATE TABLE Car_Spare_Parts(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    VIN CHAR(8),
	spid INT,
	FOREIGN KEY(spid) REFERENCES Spare_Parts(Id),
	FOREIGN KEY(VIN) REFERENCES Cars(VIN)
);