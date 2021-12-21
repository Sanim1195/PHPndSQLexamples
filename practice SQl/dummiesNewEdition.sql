CREATE DATABASE lotto;

CREATE TABLE POWERSQL (
 ProposalNumber INTEGER PRIMARY KEY,
 FirstName CHAR (15),
 LastName CHAR (20),
 Address CHAR (30),
 City CHAR (25),
 StateProvince CHAR (2),
 PostalCode CHAR (10),
 Country CHAR (30),
 Phone CHAR (14),
 HowKnown CHAR (30),
 Proposal CHAR (50),
 BusinessOrCharity CHAR (1) );
 
 SELECT * FROM POWERSQL
 
 ALTER TABLE POWERSQL
 ADD COLUMN Address2 CHAR (30);
 
 
