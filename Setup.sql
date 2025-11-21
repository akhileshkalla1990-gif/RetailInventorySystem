-- Create Database
CREATE DATABASE RetailInventoryDB;
GO

USE RetailInventoryDB;
GO

-- Create Users Table
CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(50) NOT NULL,
    Password NVARCHAR(50) NOT NULL -- In a real app, hash this!
);

-- Create Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(100) NOT NULL,
    Category NVARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT,
    Description NVARCHAR(255)
);

-- Insert Default User (admin/admin123)
INSERT INTO Users (Username, Password) VALUES ('admin', 'admin123');