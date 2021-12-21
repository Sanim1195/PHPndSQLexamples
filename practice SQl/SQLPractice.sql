/* To create a database called membersOnly */
CREATE DATABASE membersOnly; 


/* creating a table called Member for membersOnly Database */

CREATE TABLE membersOnly.Members (
loginName VARCHAR (20) NOT NULL,
createDate DATE NOT NULL,
userPassword CHAR  (255) NOT NULL,
firstName VARCHAR (50),
lastName VARCHAR (50),
street VARCHAR (50),
city VARCHAR (50),
state CHAR (2),
zip CHAR (10),
email VARCHAR (50),
phone CHAR (15),
fax CHAR (15),

PRIMARY KEY (loginName)
);




	CREATE TABLE membersOnly.oldMembers (
	loginName VARCHAR (20) NOT NULL,
	createDate DATE NOT NULL,
	userPassword CHAR  (255) NOT NULL,
	firstName VARCHAR (50),
	lastName VARCHAR (50),
	street VARCHAR (50),
	city VARCHAR (50),
	state CHAR (2),
	zip CHAR (10),
	email VARCHAR (50),
	phone CHAR (15),
	fax CHAR (15),

	PRIMARY KEY (loginName)
	);





	INSERT INTO membersOnly.oldmembers (loginName,createDate,userPassword,firstName,lastName,street,city,state,zip,email,phone,fax)
	VALUES ("Funny Mike","2005-8-30","warningthisPasswordisStrong","Mike","Red Neck","101 South of The South","Atlanta","GA","30314","redneck@gmail.com","(000) 050-5555","");


	INSERT INTO membersOnly.oldmembers (loginName,createDate,userPassword,firstName,lastName,street,city,state,zip,email,phone,fax)
	VALUES ("Snoop Dogg","1994-4-20","iamagangstanigga","Calvin Cordozar","Broadus Jr ","101 Long Beach ","420 East Side Los Angeles","CA","90801","snoopsmokes@goodweed.com","(000) 070-2747","(405) 070 7777");







/* to show list of all available database */
SHOW DATABASES ; 

/* to describe the selected database and it's info or to see the structure of the database */
DESCRIBE members;

/* to show the list of tables availabe in the selected database */
SHOW TABLES ;


/* to see the structure of the table */
DESCRIBE members;


/* to drop  a table 
	drop table tableName

	drop table pet

 	to drop a database
	DROP DATABASE membersonly 
*/



CREATE DATABASE petCatalog;

CREATE TABLE petCatalog.pet (
	petID SERIAL,
	petName CHAR (25) NOT NULL,
	petType CHAR (15),
	petDescription varchar(255),
	price DECIMAL (9,2),
	pix CHAR (15),
	
	PRIMARY KEY (petID)
);



CREATE TABLE petCatalog.pettype (
	petType CHAR (15),
	typeDescription VARCHAR (255),
	PRIMARY KEY (petType)
);





DESCRIBE membersOnly.members;


CREATE TABLE petCatalog.petcolor(
	petName CHAR (25),
	petColor CHAR (15),
	pix CHAR (15),
	PRIMARY KEY (petName,petColor)
);


/* Inserting values into members table the membersOnly. represents the particular database the table is located at*/ 

	INSERT INTO membersOnly.members (loginName,createDate,userPassword,lastName,street,city,state,zip,email,phone,fax)
	VALUES ("igguy","2001-12-2","secret","Smith","1234 Happy St","Las Vegas","NV","88888","gsmith@GSmithCompany.com","(555) 555-5555","");

	INSERT INTO membersOnly.members (loginName,createDate,userPassword,lastName,street,city,state,zip,email,phone,fax)
	VALUES ("Ronnin","2002-05-22","ilovewrestling","John","1234 Sad road","Los Angeles","CA","5555","John@gmail.com","(222) 222-2222","022022202");

	INSERT INTO membersOnly.members (loginName,createDate,userPassword,firstName,lastName,street,city,state,zip,email,phone,fax)
	VALUES ("Funny Mike","2005-8-30","warningthisPasswordisStrong","Mike","Red Neck","101 South of The South","Atlanta","GA","30314","redneck@gmail.com","(000) 050-5555","");


	INSERT INTO membersOnly.members (loginName,createDate,userPassword,firstName,lastName,street,city,state,zip,email,phone,fax)
	VALUES ("Snoop Dogg","1994-4-20","iamagangstanigga","Calvin Cordozar","Broadus Jr ","101 Long Beach ","420 East Side Los Angeles","CA","90801","snoopsmokes@goodweed.com","(000) 070-2747","(405) 070 7777");


	INSERT INTO membersOnly.members (loginName,createDate,userPassword,firstName,lastName,street,city,state,zip,email,phone,fax)
	VALUES ("Ye","2000-7-16","theharderstShitOutThere","Kanye","West ","105 South of The South","Atlanta","GA","30322","iamalittlecrazy@kanye.com","(000) 050-8548","(408) 999 8888");



	INSERT INTO petcatalog.petcolor (petName, petColor) VALUES ("Unicorn", "White");
	INSERT INTO petcatalog.petcolor (petName,petColor) VALUES ("Unicorn","Silver");
	INSERT INTO petcatalog.petcolor (petName, petColor ) VALUES ("Fish", "Gold");	
	
	
	
/* Using the select clause followed by * (a wildcard meaning all the columns) to retrive all info from the table */

	SELECT * FROM membersonly.members;
	SELECT * FROM petCatalog.pet;

/* Inserting values into pet table the petcatalog. represents the particular database the table is located at*/ 

	INSERT INTO petCatalog.pet VALUES ("1","Unicorn", "Horse", "Spiral Horn", "5000","");
	INSERT INTO petCatalog.pet VALUES ("2","Pegasus", "Horse", "Winged", "8000.00","");
	INSERT INTO petCatalog.pet VALUES ("3","Lion", "Cat", "Large; Mane on neck", "2000","");

SELECT a.lastName, a.loginName 
	FROM membersonly.members a;

UPDATE `membersonly`.`members` SET `zip`='55555' WHERE  `loginName`='Ronnin';




SELECT a.petName, a.price, a.price*1.08 AS priceWithTax
FROM petcatalog.pet a;


SELECT petName,price FROM petcatalog.pet;

SELECT MAX(price) FROM petcatalog.pet;

SELECT SUM(price)  from petcatalog.pet;

SELECT MIN(price) FROM petcatalog.pet;

SELECT COUNT(price) FROM petcatalog.pet;




/* usingOrder By clause to return pet name in ascending order */
	SELECT * FROM petcatalog.pet ORDER BY petName;




SELECT * FROM petcatalog.pet ORDER BY price DESC;

SELECT COUNT(price), petType FROM pet GROUP BY pettype ;





/* Selects only the rows where 55555 is stored in
the column named zip */

	SELECT * FROM membersOnly.members WHERE zip = "88888";




SELECT* FROM membersOnly.members;




/*  Selects only the rows
where the zip code is
55556 or higher*/


	SELECT * FROM membersOnly.members WHERE zip > "55555";




/* Selects only the rows
where the zip code is
55555 or higher */

	SELECT * FROM membersOnly.members WHERE zip >= "55555";





/* Selects only the rows
where the zip code is
55554 or LOWER  */

	SELECT * FROM membersOnly.members WHERE zip < "55555";




/* Selects only the rows
where the zip code is
55555 or lower  */

	SELECT * FROM membersOnly.members WHERE zip <= "55555";




SELECT * FROM membersOnly.members WHERE createDate > "2001-01-01";




/* Selects only the rows where the zip code is greater than 19999 but
less 40001 */

	SELECT * FROM membersOnly.members WHERE zip BETWEEN "20000" AND "40000";
	SELECT * FROM membersOnly.members WHERE zip BETWEEN "20000" AND "60000" AND createDate > "2001-01-01";



/* Selects only the rows where zip code is 55555 or 82256 */
	SELECT * FROM membersOnly.members WHERE zip IN ( "55555", " 82256")
	
	
	

/* Selects only the rows where the zip code is any zip 
code except 88888 or 55555 */

	SELECT * FROM membersOnly.members WHERE zip NOT IN ("88888", "55555");	
	


/* wildcards % (which matches with any string)
 and _ (which matches any character)


Selects all rows where 
 zip code begins with 3 */
 	
 	SELECT * FROM membersOnly.members WHERE zip LIKE "3%";



/* Selects all rows where 
 zip code does not  begin with 3 */
 
 	SELECT * FROM membersOnly.members WHERE zip NOT LIKE "3%";









/*
to find all people in the Member Directory whose last names begin with W, who
live in Atlanta, and who have an 8 in either their phone or fax number:

*/


	SELECT lastName,firstName FROM membersOnly.members
	WHERE lastName LIKE "W%"
	AND city = "Atlanta"
	AND (phone LIKE "%8%" OR fax LIKE "%8%")







/*
To select only the first  member who live in Georgia
*/

	SELECT * FROM membersOnly.members WHERE state="GA" LIMIT 1 ;
	
	SELECT * FROM membersOnly.oldmembers;
	SELECT * FROM membersOnly.members;
	





/*
table of members who have resigned from the club and
a separate table of current members. You can get a list of all members, both
current and resigned
*/
	SELECT loginName,lastName,firstName FROM membersOnly.members UNION ALL 
	SELECT loginName,lastName,firstName FROM membersOnly.oldmembers;
	
	








/*
If you don’t want duplicates, don’t include the word ALL. If ALL is not included,
duplicate lines are not added to the result
*/

	SELECT loginName,lastName,firstName FROM membersOnly.members UNION  
	SELECT loginName,lastName,firstName FROM membersOnly.oldmembers;










/*
	The two common types of joins are an INNER join and an OUTER join. The difference between
 	an INNER and OUTER join is in the number of rows included in the
	results table. The RESULTS table produced BY an INNER join contains ONLY ROWS
	THAT EXISTED IN BOTH TABLES. The combined table produced BY an OUTER join
	contains ALL ROWS THAT EXISTED IN ONE TABLE  with BLANKS in the COLUMNS FOR the
	ROWS that did NOT EXIST IN the SECOND table.

*/




SELECT * FROM membersOnly.members, membersOnly.oldmembers
WHERE members.loginName = oldmembers.loginName



SELECT * FROM petcatalog.pet, petcatalog.petcolor WHERE 
pet.petName = petcolor.petName;


SELECT * FROM petcatalog.Pet LEFT JOIN petcatalog.petColor 
ON Pet.petName=petColor.petName;






/*
SELECT loginName from membersOnly.members LEFT JOIN Login
ON Members.loginName=Login.loginName 
WHERE Login.loginName IS NULL
*/


 










	
	
	