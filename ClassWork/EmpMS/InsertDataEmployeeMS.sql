USE employeedb;
# 3
INSERT INTO department (deptId, deptName, location_id, hod) VALUES
(101, 'HR', 1001, 'John Smith'),
(102, 'Finance', 1002, 'Jessica Lee'),
(103, 'Marketing', 1003, 'Michael Johnson'),
(104, 'Operations', 1004, 'Sarah Brown');

#2
INSERT INTO location (location_id, locname, cityId) VALUES
(1001, 'New York City', 2001),
(1002, 'Los Angeles', 2002),
(1003, 'Chicago', 2003),
(1004, 'Houston', 2004);

# 1st
INSERT INTO city (cityId, cityname, zipcode) VALUES
(2001, 'New York', 10001),
(2002, 'Los Angeles', 90001),
(2003, 'Chicago', 60007),
(2004, 'Houston', 77001);

# 4
INSERT INTO employee (eid, ename, salary, contactNo, emailId, address, exper, des, join_date, deptId) VALUES
(1, 'John Doe', 60000, '123-456-7890', 'john.doe@example.com', '123 Main St, New York, NY', 5, 'Manager', '2020-01-01', 101),
(2, 'Jane Smith', 50000, '987-654-3210', 'jane.smith@example.com', '456 Main St, New York, NY', 3, 'Assistant Manager', '2021-05-01', 101),
(3, 'Bob Johnson', 70000, '555-555-5555', 'bob.johnson@example.com', '789 Main St, Los Angeles, CA', 8, 'Director', '2019-01-01', 102),
(4, 'Emily Brown', 55000, '111-111-1111', 'emily.brown@example.com', '321 Main St, Los Angeles, CA', 2, 'Assistant Director', '2022-01-01', 102),
(5, 'Mike Lee', 65000, '222-222-2222', 'mike.lee@example.com', '456 Main St, Chicago, IL', 6, 'Manager', '2021-07-01', 103),
(6, 'Julia Kim', 45000, '333-333-3333', 'julia.kim@example.com', '789 Main St, Chicago, IL', 1, 'Assistant Manager', '2022-02-01', 103),
(7, 'Tom Johnson', 75000, '444-444-4444', 'tom.johnson@example.com', '123 Main St, Houston, TX', 10, 'Director', '2018-01-01', 104),
(8, 'Lisa Davis', 60000, '777-777-7777', 'lisa.davis@example.com', '456 Main St, Houston, TX', 4, 'Manager', '2020-06-01', 104);