-- query for library management system

-- created a database 
CREATE DATABASE project;


-- created a table for publisher
CREATE TABLE table_publisher
(
        PublisherName VARCHAR(100) PRIMARY KEY NOT NULL,
		PublisherAddress VARCHAR(200) NOT NULL,
		PublisherPhone VARCHAR(50) NOT NULL,
);

--created a table for book
CREATE TABLE tbl_book (
		BookID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
		Title VARCHAR(100) NOT NULL,
		);

-- created a table for borower
CREATE TABLE borrower_tbl (
		Borrower_CardNo INT PRIMARY KEY NOT NULL IDENTITY (100,1),-- start cardno with 100 and cardno increment with 1
		Borrower_BorrowerName VARCHAR(100) NOT NULL,
		Borrower_BorrowerAddress VARCHAR(200) NOT NULL,
		Borrower_BorrowerPhone VARCHAR(50) NOT NULL,
	);