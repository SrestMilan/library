-- query for library management system

-- creat
CREATE DATABASE project;

CREATE TABLE table_publisher
(
        PublisherName VARCHAR(100) PRIMARY KEY NOT NULL,
		PublisherAddress VARCHAR(200) NOT NULL,
		PublisherPhone VARCHAR(50) NOT NULL,
);

CREATE TABLE tbl_book (
		BookID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
		Title VARCHAR(100) NOT NULL,
		);