CREATE TABLE Manufacturing_Equipment 
(
    Id INT PRIMARY KEY ,
    Type VARCHAR(100) NOT NULL,
    Capacity VARCHAR(100) NOT NULL,
    Maintenance_Schedule DATE NOT NULL
);
CREATE TABLE Raw_Materials
(
    RM_Type VARCHAR(100) PRIMARY KEY,
    Quantity INT NOT NULL,
    Supplier VARCHAR(100) NOT NULL,
    Expiry_Date DATE NOT NULL
);
CREATE TABLE Finished_Products
(
   Type VARCHAR(100) NOT NULL,
    Customization_Details TEXT,
    Finished_Name VARCHAR(100) PRIMARY KEY,
    Finished_Price DECIMAL(10, 2) NOT NULL
);
CREATE TABLE Customers 
(
    C_Id INT PRIMARY KEY ,
    C_Name VARCHAR(100) NOT NULL,
    Phone_No VARCHAR(15) NOT NULL
);
CREATE TABLE Employees (
    E_Id INT PRIMARY KEY ,
    E_Name VARCHAR(100) NOT NULL,
    Position VARCHAR(100) NOT NULL,
    Schedule DATE NOT NULL
); 
CREATE TABLE Orders
(
    O_Id INT PRIMARY KEY ,
    Billing DECIMAL(10, 2) NOT NULL,
    O_Quantity INT NOT NULL,
    Delivery_Date DATE NOT NULL,
    C_Id INT,
    E_Id INT,
    FOREIGN KEY (C_Id) REFERENCES Customers( C_Id) ,
    FOREIGN KEY (E_Id) REFERENCES Employees(E_Id)
)

CREATE TABLE Maintenance_Task 
(
    m_Id INT PRIMARY KEY,
    Description TEXT NOT NULL,
    Due_Date DATE NOT NULL,
   Id INT,
    FOREIGN KEY (Id) REFERENCES Manufacturing_Equipment (Id)
);
CREATE TABLE Exhibit 
(
    m_Id INT,
    E_Id INT,
    PRIMARY KEY (m_Id, E_Id),
    FOREIGN KEY (m_Id) REFERENCES Maintenance_Task(m_Id),
    FOREIGN KEY (E_Id) REFERENCES Employees(E_Id)
);
CREATE TABLE Has 
(
    Finished_Name VARCHAR(100),
    O_Id INT,
    PRIMARY KEY (Finished_Name, O_Id),
    FOREIGN KEY (Finished_Name) REFERENCES Finished_Products(Finished_Name),
    FOREIGN KEY (O_Id) REFERENCES Orders(O_Id)
);
CREATE TABLE ENGAGE 
( RM_Type VARCHAR(100) ,
  Finished_Name VARCHAR(100) ,
   Id INT,
   PRIMARY KEY (Id,RM_Type, Finished_Name ),
   FOREIGN KEY (Id) REFERENCES Manufacturing_Equipment(Id),
   FOREIGN KEY (RM_Type) REFERENCES Raw_Materials(RM_Type),
    FOREIGN KEY (Finished_Name) REFERENCES Finished_Products(Finished_Name)
   );
