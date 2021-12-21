CREATE DATABASE miass;

CREATE TABLE miass.sani (
id INT NOT NULL AUTO_INCREMENT,
Player1_name varchar (15),
email VARCHAR (255) UNIQUE,
age INT (3),
dob DATE,

PRIMARY KEY (id)
FOREIGN KEY (Player2ID) REFERENCES sanis(id)););

INSERT INTO miass.sanis ( player1_name, email,age, dob)
VALUES ("Sanim", "pokgs@mmil.com", "25", "1899-05-02" );

INSERT INTO miass.sanis ( player1_name, email, dob)
VALUES ("Sahas", "pok@mmil.com", "1899-05-02" );



CREATE TABLE miass.san (
id INT NOT NULL AUTO_INCREMENT,
Player2ID  int  ,
Player2_name varchar (15),
email VARCHAR (255) UNIQUE,
age INT (3),
dob DATE,

PRIMARY KEY (id),
FOREIGN KEY (Player2ID) REFERENCES sanis(id)
);  
