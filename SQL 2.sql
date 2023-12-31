DROP DATABASE university;
Create DATABASE UNIVERSITY;
CREATE TABLE ADDRESS (
ID INT auto_increment NOT NULL,
COUNTRY VARCHAR(20) NOT NULL,
CITY VARCHAR (30),
STREET VARCHAR(30),
NUMBER INT,
PRIMARY KEY (ID)
);
CREATE TABLE PERSON (
ID INT NOT NULL auto_increment, 
FIRSTNAME VARCHAR(20) NOT NULL,
LastNAME VARCHAR(20) NOT NULL,
PHONENUMBER INT,
BIRTHDATE date NOT NULL,
ADDRESSID INT NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY(ADDRESSID) REFERENCES ADDRESS(ID)
);
ALTER TABLE PERSON 
CHANGE PHONENUMBER PHONENUMBER INT NOT NULL,
ADD UNIQUE KEY(PHONENUMBER);

CREATE TABLE STUDENT (
ID INT NOT NULL  auto_increment,
PERSONID INT NOT NULL,
DESCRIPTION VARCHAR (20) ,
PRIMARY KEY (ID),
FOREIGN KEY(PERSONID) REFERENCES PERSON (ID) ON DELETE CASCADE
);
CREATE TABLE TEACHER (
ID INT NOT NULL auto_increment,
PERSONID INT NOT NULL,
POSITION VARCHAR (20) ,
PRIMARY KEY (ID),
FOREIGN KEY(PERSONID) REFERENCES PERSON(ID) ON DELETE CASCADE); 
ALTER TABLE TEACHER 
CHANGE POSITION POSITION VARCHAR(20) NOT NULL;

CREATE TABLE COURSE (
ID INT NOT NULL auto_increment,
Name VARCHAR (20) ,
Credits INT,
DESCRIPTION VARCHAR (20) ,
TEACHERID INT NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY(TEACHERID) REFERENCES TEACHER (ID) ON DELETE CASCADE);
ALTER TABLE COURSE
CHANGE Name Name VARCHAR(30) NOT NULL;
ALTER TABLE COURSE
CHANGE DESCRIPTION DESCRIPTION VARCHAR(30);
Drop table COURSE;
CREATE TABLE COURSE (
ID INT NOT NULL auto_increment,
Name VARCHAR (30) ,
Credits INT,
DESCRIPTION VARCHAR (40) ,
TEACHERID INT NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY(TEACHERID) REFERENCES TEACHER (ID) ON DELETE CASCADE);

INSERT INTO ADDRESS (COUNTRY, CITY, STREET, NUMBER) VALUES ('Kazakhstan', 'Astana', 'Kenesary', '20' );
INSERT INTO ADDRESS (COUNTRY, CITY, STREET, NUMBER) VALUES ('Russia', 'Moskva', 'Naberezhnaya', '13' );
INSERT INTO ADDRESS (COUNTRY, CITY, STREET, NUMBER) VALUES ('Kazakhstan', 'Almaty', 'Tole bi', '18');
INSERT INTO ADDRESS (COUNTRY, CITY, STREET, NUMBER) VALUES ('Kazakhstan', 'Taraz', 'Abay', '40');
INSERT INTO ADDRESS (COUNTRY, CITY, STREET, NUMBER) VALUES ('Kazakhstan', 'Uralsk', 'Pobeda', '12');

INSERT INTO PERSON (FIRSTNAME, LastNAME, PHONENUMBER, BIRTHDATE, ADDRESSID) VALUES ('Almas', 'Sapargali', '5454512', '2000-02-12', 1);
INSERT INTO PERSON (FIRSTNAME, LastNAME, PHONENUMBER, BIRTHDATE, ADDRESSID) VALUES ('Aleksandr', 'Li', '4526585', '1998-05-24', 2);
INSERT INTO PERSON (FIRSTNAME, LastNAME, PHONENUMBER, BIRTHDATE, ADDRESSID) VALUES ('Askar', 'Kanatov', '1524541', '1997-10-20', 3);
INSERT INTO PERSON (FIRSTNAME, LastNAME, PHONENUMBER, BIRTHDATE, ADDRESSID) VALUES ('Aizhan', 'Maratova', '7854212', '1995-02-15', 4);
INSERT INTO PERSON (FIRSTNAME, LastNAME, PHONENUMBER, BIRTHDATE, ADDRESSID) VALUES ('Laura', 'Maksatova', '5214252', '1994-08-11', 5);

INSERT INTO STUDENT (PERSONID, DESCRIPTION) VALUES (1, 'Math');
INSERT INTO STUDENT (PERSONID, DESCRIPTION) VALUES (3, 'History');
INSERT INTO STUDENT (PERSONID, DESCRIPTION) VALUES (5, 'Pshycology');

INSERT INTO TEACHER (POSITION, PERSONID) VALUES ('Academic subjects', 2), ('Academic', 4);

INSERT INTO COURSE (Name, Credits, DESCRIPTION , TEACHERID) VALUES ('Geophysics', 3, ' ', 1), ('Gas-condensate fields', 4, 'Gas-condensate production', 2);

SELECT *FROM ADDRESS;
SELECT *FROM STUDENT;
SELECT *FROM PERSON;
SELECT *FROM TEACHER;