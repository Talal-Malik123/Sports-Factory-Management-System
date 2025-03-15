INSERT INTO Manufacturing_Equipment (Id, Type, Capacity, Maintenance_Schedule) VALUES
(1, 'Machine Type A', '100 units/day', '2024-06-10'),
(2, 'Machine Type B', '200 units/day', '2024-06-11'),
(3, 'Machine Type C', '150 units/day', '2024-06-12'),
(4, 'Machine Type D', '120 units/day', '2024-06-13'),
(5, 'Machine Type E', '180 units/day', '2024-06-14'),
(6, 'Machine Type F', '90 units/day', '2024-06-15'),
(7, 'Machine Type G', '110 units/day', '2024-06-16'),
(8, 'Machine Type H', '170 units/day', '2024-06-17'),
(9, 'Machine Type I', '130 units/day', '2024-06-18'),
(10, 'Machine Type J', '160 units/day', '2024-06-19');
INSERT INTO Raw_Materials (RM_Type, Quantity, Supplier, Expiry_Date) VALUES
('Material Type A', 1000, 'Supplier A', '2024-06-20'),
('Material Type B', 2000, 'Supplier B', '2024-06-21'),
('Material Type C', 1500, 'Supplier C', '2024-06-22'),
('Material Type D', 1200, 'Supplier D', '2024-06-23'),
('Material Type E', 1800, 'Supplier E', '2024-06-24'),
('Material Type F', 900, 'Supplier F', '2024-06-25'),
('Material Type G', 1100, 'Supplier G', '2024-06-26'),
('Material Type H', 1700, 'Supplier H', '2024-06-27'),
('Material Type I', 1300, 'Supplier I', '2024-06-28'),
('Material Type J', 1600, 'Supplier J', '2024-06-29');
SELECT* FROM Raw_Materials ;

-- Finished Products
INSERT INTO Finished_Products (Type, Customization_Details, Finished_Name, Finished_Price) VALUES
('Product Type A', 'Customization A', 'Product A', 49.99),
('Product Type B', 'Customization B', 'Product B', 59.99),
('Product Type C', 'Customization C', 'Product C', 69.99),
('Product Type D', 'Customization D', 'Product D', 79.99),
('Product Type E', 'Customization E', 'Product E', 89.99),
('Product Type F', 'Customization F', 'Product F', 99.99),
('Product Type G', 'Customization G', 'Product G', 109.99),
('Product Type H', 'Customization H', 'Product H', 119.99),
('Product Type I', 'Customization I', 'Product I', 129.99),
('Product Type J', 'Customization J', 'Product J', 139.99);

-- Customers
INSERT INTO  Customers (C_Id, C_Name, Phone_No) VALUES
(1, 'John Doe', '123-456-7890'),
(2, 'Jane Smith', '234-567-8901'),
(3, 'Alice Johnson', '345-678-9012'),
(4, 'Robert Brown', '456-789-0123'),
(5, 'Michael Davis', '567-890-1234'),
(6, 'Linda Martinez', '678-901-2345'),
(7, 'David Wilson', '789-012-3456'),
(8, 'Maria Garcia', '890-123-4567'),
(9, 'James Anderson', '901-234-5678'),
(10, 'Patricia Thomas', '012-345-6789');

-- Employees
INSERT INTO Employees (E_Id, E_Name, Position, Schedule) VALUES
(1, 'Jack Miller', 'Technician', '2024-06-10'),
(2, 'Emma Harris', 'Operator', '2024-06-11'),
(3, 'Olivia Clark', 'Supervisor', '2024-06-12'),
(4, 'Liam Lewis', 'Engineer', '2024-06-13'),
(5, 'Noah Walker', 'Manager', '2024-06-14'),
(6, 'Sophia Young', 'Technician', '2024-06-15'),
(7, 'Lucas King', 'Operator', '2024-06-16'),
(8, 'Mason Wright', 'Supervisor', '2024-06-17'),
(9, 'Amelia Scott', 'Engineer', '2024-06-18'),
(10, 'Ethan Green', 'Manager', '2024-06-19');

-- Orders
INSERT INTO Orders (O_Id, Billing, O_Quantity, Delivery_Date, C_Id, E_Id) VALUES
(1, 499.90, 10, '2024-06-20', 1, 1),
(2, 799.90, 10, '2024-06-21', 2, 2),
(3, 299.95, 5, '2024-06-22', 3, 3),
(4, 599.90, 10, '2024-06-23', 4, 4),
(5, 1199.90, 10, '2024-06-24', 5, 5),
(6, 239.92, 8, '2024-06-25', 6, 6),
(7, 899.85, 15, '2024-06-26', 7, 7),
(8, 179.94, 6, '2024-06-27', 8, 8),
(9, 149.95, 5, '2024-06-28', 9, 9),
(10, 299.90, 10, '2024-06-29', 10, 10);

-- Maintenance Task
INSERT INTO Maintenance_Task (m_Id, Description, Due_Date, Id) VALUES
(1, 'Task 1', '2024-06-20', 1),
(2, 'Task 2', '2024-06-21', 2),
(3, 'Task 3', '2024-06-22', 3),
(4, 'Task 4', '2024-06-23', 4),
(5, 'Task 5', '2024-06-24', 5),
(6, 'Task 6', '2024-06-25', 6),
(7, 'Task 7', '2024-06-26', 7),
(8, 'Task 8', '2024-06-27', 8),
(9, 'Task 9', '2024-06-28', 9),
(10, 'Task 10', '2024-06-29', 10);

-- Exhibit
INSERT INTO Exhibit (m_Id, E_Id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
SELECT* FROM Exhibit;

-- Has
INSERT INTO Has (Finished_Name, O_Id) VALUES
('Product A', 1),
('Product B', 2),
('Product C', 3),
('Product D', 4),
('Product E', 5),
('Product F', 6),
('Product G', 7),
('Product H', 8),
('Product I', 9),
('Product J', 10);

-- ENGAGE
INSERT INTO ENGAGE (RM_Type, Finished_Name, Id) VALUES
('Material Type A', 'Product A', 1),
('Material Type B', 'Product B', 2),
('Material Type C', 'Product C', 3),
('Material Type D', 'Product D', 4),
('Material Type E', 'Product E', 5),
('Material Type F', 'Product F', 6),
('Material Type G', 'Product G', 7),
('Material Type H', 'Product H', 8),
('Material Type I', 'Product I', 9),
('Material Type J', 'Product J', 10);
SELECT* FROM ENGAGE;