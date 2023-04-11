-- CREATE DATABASE employeedb;
USE employeedb;
CREATE TABLE employee (
    eid INT PRIMARY KEY,
    ename VARCHAR(50),
    salary INT,
    contactNo VARCHAR(20),
    emailId VARCHAR(50),
    address VARCHAR(100),
    exper INT,
    des VARCHAR(50),
    join_date DATE,
    deptId INT,
    FOREIGN KEY (deptId) REFERENCES department (deptId)
);

CREATE TABLE department (
    deptId INT PRIMARY KEY,
    deptName VARCHAR(50),
    location_id INT,
    hod VARCHAR(70),
     FOREIGN KEY (location_id)  REFERENCES location (location_id)
    -- FOREIGN KEY (hod) REFERENCES employee (empid)
);

CREATE TABLE location(
location_id INT PRIMARY KEY,
locname VARCHAR(60),
cityId INT,
 FOREIGN KEY (cityId) REFERENCES city(cityId)
);

CREATE TABLE city(
cityId INT PRIMARY KEY,
cityname VARCHAR(70),
zipcode INT
);