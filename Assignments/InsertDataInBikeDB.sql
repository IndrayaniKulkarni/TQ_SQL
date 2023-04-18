INSERT INTO model VALUES
(101, 'Hero Splendor', 70000.00),
(102, 'Bajaj Pulsar', 85000.00),
(103, 'Royal Enfield Classic', 150000.00),
(104, 'Yamaha R15', 140000.00),
(105, 'Honda CB Hornet 160R', 95000.00);

INSERT INTO customer VALUES
(2001, 'John', 'Doe', 9876543210, 'Male'),
(2002, 'Jane', 'Smith', 8765432109, 'Female'),
(2003, 'Bob', 'Johnson', 7654321098, 'Male'),
(2004, 'Alice', 'Williams', 6543210987, 'Female'),
(2005, 'David', 'Brown', 5432109876, 'Male');

INSERT INTO customer (cust_id,first_name,last_name,gender)VALUES 
(2006, 'John', 'Wick', 'Male'),
(2007, 'David', 'Arnold', 'Male');
INSERT INTO payment_mode VALUES
(11, 'Online'),
(22, 'Cash'),
(33, 'Cheque');

INSERT INTO feedback_rating VALUES
(1, 'Complaint'),
(2, 'Bad'),
(3, 'Average'),
(4, 'Good'),
(5, 'Excellent');

INSERT INTO purchase VALUES
(1, 2001, 101, 5000.00, 11, '2022-02-10', 4),
(2, 2002, 102, 6000.00, 22, '2022-02-09', 5),
(3, 2003, 103, 10000.00, 33, '2022-02-08', 4),
(4, 2004, 104, 9000.00, 11, '2022-02-07', 3),
(5, 2005, 105, 7500.00, 22, '2022-02-06', 2),
(6, 2001, 102, 5500.00, 33, '2022-02-05', 4),
(7, 2002, 103, 11000.00, 11, '2022-02-04', 5),
(8, 2003, 104, 10000.00, 22, '2022-02-03', 4),
(9, 2004, 105, 8000.00, 33, '2022-02-02', 3),
(10,2005, 101, 6500.00, 11, '2022-02-01', 2);

INSERT INTO purchase VALUES
(11,2005,101,20000.00,11,'2022-02-01',2);

INSERT INTO purchase VALUES
(12,2004,105,25000.00,22,'2022-02-02',3);