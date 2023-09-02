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

-- added multiple records into table_publisher table 
INSERT INTO table_publisher
VALUES
('DAW Books','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Viking','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Signet Books','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Chilton Books','Not Available','Not Available'),
		('George Allen & Unwin','83 Alexander Ln, Crows Nest NSW 2065, Australia','+61-2-8425-0100'),
		('Alfred A. Knopf','The Knopf Doubleday Group Domestic Rights, 1745 Broadway, New York, NY 10019','212-940-7390'),		
		('Bloomsbury','Bloomsbury Publishing Inc., 1385 Broadway, 5th Floor, New York, NY 10018','212-419-5300'),
		('Shinchosa','Oga Bldg. 8, 2-5-4 Sarugaku-cho, Chiyoda-ku, Tokyo 101-0064 Japan','+81-3-5577-6507'),
		('Harper and Row','HarperCollins Publishers, 195 Broadway, New York, NY 10007','212-207-7000'),
		('Pan Books','175 Fifth Avenue, New York, NY 10010','646-307-5745'),
		('Chalto & Windus','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Harcourt Brace Jovanovich','3 Park Ave, New York, NY 10016','212-420-5800'),
		('W.W. Norton',' W. W. Norton & Company, Inc., 500 Fifth Avenue, New York, New York 10110','212-354-5500'),
		('Scholastic','557 Broadway, New York, NY 10012','800-724-6527'),
		('Bantam','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Picador USA','175 Fifth Avenue, New York, NY 10010','646-307-5745');



-- retriving data from table_publisher table
SELECT * FROM table_publisher;


-- inserted data into table of book
INSERT INTO tbl_book(Title)
VALUES
('A Wise Mans Fear'),
		('Harry Potter and the Philosophers Stone'),
		('Hard Boiled Wonderland and The End of the World'),
		('The Giving Tree');


-- retrieve data from book of table
SELECT * FROM tbl_book;

-- retrieve data using WHERE clause from book of table
SELECT Title FROM tbl_book WHERE BookID=6;

-- retrieve data using WHERE clause from book of table taking title
SELECT * FROM tbl_book WHERE Title='The Giving Tree'; 

-- deleting row records of book table i.e. Title=The Giving Tree using WHERE clause 
DELETE FROM tbl_book WHERE Title='The Giving Tree'

-- inserted records in borrower table
INSERT INTO borrower_tbl
		(Borrower_BorrowerName, Borrower_BorrowerAddress, Borrower_BorrowerPhone)
		VALUES
		('Joe Smith','1321 4th Street, New York, NY 10014','212-312-1234'),
		('Jane Smith','1321 4th Street, New York, NY 10014','212-931-4124'),
		('Tom Li','981 Main Street, Ann Arbor, MI 48104','734-902-7455'),
		('Angela Thompson','2212 Green Avenue, Ann Arbor, MI 48104','313-591-2122'),
		('Harry Emnace','121 Park Drive, Ann Arbor, MI 48104','412-512-5522'),
		('Tom Haverford','23 75th Street, New York, NY 10014','212-631-3418'),
		('Haley Jackson','231 52nd Avenue New York, NY 10014','212-419-9935'),
		('Michael Horford','653 Glen Avenue, Ann Arbor, MI 48104','734-998-1513');

-- RETRIVING data from borrower table
SELECT * From borrower_tbl;

-- updating Borrower_BorrowerName='Govinda Shrestha' with Borrrower_CardNo column
UPDATE borrower_tbl SET Borrower_BorrowerName='Govinda Shrestha' WHERE Borrower_CardNo=105;
select * from borrower_tbl;



