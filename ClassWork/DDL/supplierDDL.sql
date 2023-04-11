# 11 Apr 2023

USE productdb;

CREATE TABLE supplier(
supid INT,
firstname VARCHAR(50) NOT NULL,
lastname VARCHAR(50) NOT NULL,
phoneNo BIGINT NOT NULL,
email VARCHAR(100));

# NEED TO CHANGE SUPID AS PRIMARY KEY
ALTER TABLE supplier
MODIFY supid INT PRIMARY KEY;

DESC supplier;

CREATE TABLE item(
itemid INT PRIMARY KEY,
itemname VARCHAR(50) NOT NULL,
cost FLOAT,
supid INT, -- MAKE COLUMN FIRST - 
FOREIGN KEY (supid) REFERENCES supplier(supid));
DESC item;