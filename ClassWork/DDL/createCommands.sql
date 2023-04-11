-- 06Apr., 2023
-- create schema 
CREATE DATABASE studentdb;

-- drop database
-- DROP DATABASE studentdb;

-- use databse 
use studentdb;

-- display database in user
show databases;

-- desc/ describe

desc faculty;
-- CREATE TABLE course -- 
CREATE TABLE course(
courseId int primary key,
cName varchar(30) not null,
duration varchar(30),
fees int
);
describe course;

-- alter command

-- drop command
drop demp;