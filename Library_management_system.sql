-- creating the database for library management system
    CREATE DATABASE LIBRARY;
-- creating the tables for our system
USE LIBRARY;
-- 1.This table contains the records for the readers in the library
CREATE TABLE Reader(
user_id INT PRIMARY KEY,
Email VARCHAR(100) NOT NULL,
First_Name VARCHAR(1000) NOT NULL ,
Last_Name VARCHAR(1000) NOT NULL,
Phone_Number INT NOT NULL,
Address VARCHAR(1000) NOT NULL
);
-- 2.This table contains the records for the staffs in the library
CREATE TABLE Staff(
staff_id INT PRIMARY KEY,
First_Name VARCHAR(1000) NOT NULL ,
Last_Name VARCHAR(1000) NOT NULL,
Phone_Number INT NOT NULL
);
-- 3.This table contains the records for the books in the library
CREATE TABLE Books(
ISBN VARCHAR(100) PRIMARY KEY NOT NULL unique,
Title VARCHAR(1000) NOT NULL,
Edition VARCHAR(1000) NOT NULL,
Category VARCHAR(1000) NOT NULL,
Author_No VARCHAR(1000) NOT NULL
);
-- 4.This table contains the records for the Publisher
CREATE TABLE Publisher(
Publisher_id INT PRIMARY KEY NOT NULL,
Year_of_publication INT NOT NULL,
Name VARCHAR(1000) NOT NULL
);
-- 5.This table contains Reports
CREATE TABLE Reports(
Reg_Number INT PRIMARY KEY unique,
ISBN VARCHAR(100) NOT NULL ,
user_id INT NOT NULL ,
Status VARCHAR(100) NOT NULL,
FOREIGN KEY (ISBN) REFERENCES BookS(ISBN),
FOREIGN KEY (user_id) REFERENCES Reader(user_id)
);
