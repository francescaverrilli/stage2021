create database IF NOT exists Phone_dumb
	default character set utf8
    default collate utf8_unicode_ci;
    
Use Phone_dumb;

CREATE TABLE IF NOT EXISTS country (
    code varchar(2),
    name varchar(32),
	primary key (code)
    );

CREATE TABLE IF NOT EXISTS brand (
	id INT(11) NOT NULL AUTO_INCREMENT,
    name varchar(32),
    country varchar(2),
    primary key (id),
    foreign key (country) REFERENCES country(code)
    );

CREATE TABLE IF NOT EXISTS opsys (
	id INT NOT NULL AUTO_INCREMENT,
    description varchar(64),
    company varchar(64),
    openSource TINYINT(1),
    primary key (id)
    );
    
    
CREATE TABLE IF NOT EXISTS smartphone (
	id INT NOT NULL AUTO_INCREMENT,
    name varchar(64),
    ram varchar(5),
    cpu varchar(64),
    displayPip INT(11),
    displaySize varchar(12),
    displayResolution varchar(64),
    size varchar(64),
    weight INT(4),
    notes varchar(1024),
    brand INT(11),
    opSys INT(11),
    primary key (id),
    foreign key (brand) REFERENCES brand(id),
    foreign key (opsys) REFERENCES opsys(id)
    );
    
Insert into country (code, name) values 
	('KR','Korea'),
    ('FR','Francia'),
    ('SW','Swezia'),
    ('US','USA'),
    ('GR','Germania');
    
    
Insert into brand (id, name, country) values
	(1,'Samsung','KR'),
    (2,'Alcate','FR'),
    (3,'Siemens','GR'),
    (4,'Motorola','US'),
    (5,'Nokia','SW');
    
Insert into brand (id, name, country) values
    (6,'Apple','US');
    
Insert into opsys (id, description, company, openSource) values
	(01, 'debian', 'linux',1),
    (02, 'win10', 'microsoft',0),
    (03, 'safari', 'apple',0);
    
    
Insert into smartphone (id, name, ram, cpu, DisplayPip, DisplaySize, DisplayResolution, size, weight, notes, brand, opSys) values
	#(1,'S10','3G','2.5 GHz',7,'8x4 cm^2','FHD','grande',40,'alta gamma',1,01), 
    (2,'X12','4G','2.0 GHz',7,'12x4 cm^2','FHD+','grande',40,'alta gamma',5,02),
    (3,'Al01','2G','3.5 GHz',9,'8x6 cm^2','FHD-','piccolo',30,'bassa gamma',2,01), 
    (4,'T20','1G','1.5 GHz',5,'6x4 cm^2','HD','compatto',30,'bassa gamma',3,03);
    

Insert into smartphone (id, name, ram, cpu, DisplayPip, DisplaySize, DisplayResolution, size, weight, notes, brand, opSys) values
    (5,'G12','2G','2.5 GHz',8,'16x8 cm^2','UHD','grande',50,'alta gamma',3,02);
    
Insert into smartphone (id, name, ram, cpu, DisplayPip, DisplaySize, DisplayResolution, size, weight, notes, brand, opSys) values
	(6,'Al07','2G','3.5 GHz',1,'7x3 cm^2','FHD-','piccolo',47,'media gamma',1,01);

Insert into smartphone (id, name, ram, cpu, DisplayPip, DisplaySize, DisplayResolution, size, weight, notes, brand, opSys) values
	 (7,'D22','3G','2.5 GHz',2,'3x2 cm^2','4k','grande',31,'alta gamma',5,03);

Insert into smartphone (id, name, ram, cpu, DisplayPip, DisplaySize, DisplayResolution, size, weight, notes, brand, opSys) values
    (8,'F2F','4G','3.5 GHz',3,'3x3 cm^2','HD','grande',29,'bassa gamma',5,02);
     
Insert into smartphone (id, name, ram, cpu, DisplayPip, DisplaySize, DisplayResolution, size, weight, notes, brand, opSys) values
    (9,'Oppo1','4G','3.2 GHz',3,'3x3 cm^2','1080x1920','grande',29,'media gamma',5,02);
     
Insert into smartphone (id, name, ram, cpu, DisplayPip, DisplaySize, DisplayResolution, size, weight, notes, brand, opSys) values
    (10,'Galaxy','4G','dual-core',3,'3x3 cm^2','1080x1920','medio',29,'alta gamma',5,02);
     
Insert into smartphone (id, name, ram, cpu, DisplayPip, DisplaySize, DisplayResolution, size, weight, notes, brand, opSys) values
    (11,'Galaxy','4G','dual-core',3,'3x3 cm^2','1080x1920','medio',29,'alta gamma',5,02);
     
Insert into smartphone (id, name, ram, cpu, DisplayPip, DisplaySize, DisplayResolution, size, weight, notes, brand, opSys) values
    (12,'Oppo1','4G','3.2 GHz',3,'3x3 cm^2','1080x1920','grande',29,'media gamma',5,02);
     
Insert into smartphone (id, name, ram, cpu, DisplayPip, DisplaySize, DisplayResolution, size, weight, notes, brand, opSys) values
    (13,'Galaxy','4G','dual-core',3,'3x3 cm^2','1080x1920','medio',29,'alta gamma',5,02);
     
Insert into smartphone (id, name, ram, cpu, DisplayPip, DisplaySize, DisplayResolution, size, weight, notes, brand, opSys) values
    (14,'Galaxy','4G','dual-core',3,'3x3 cm^2','1080x1920','medio',29,'alta gamma',5,02);
     
Insert into smartphone (id, name, ram, cpu, DisplayPip, DisplaySize, DisplayResolution, size, weight, notes, brand, opSys) values
    (15,'Moto5','4G','3.2 GHz',3,'3x3 cm^2','1080x1920','grande',290,'media gamma',5,01);
     
Insert into smartphone (id, name, ram, cpu, DisplayPip, DisplaySize, DisplayResolution, size, weight, notes, brand, opSys) values
    (16,'Moto1','4G','dual-core',7,'3x3 cm^2','1080x1920','medio',259,'bassa gamma',5,01);
     
Insert into smartphone (id, name, ram, cpu, DisplayPip, DisplaySize, DisplayResolution, size, weight, notes, brand, opSys) values
    (17,'Moto20','4G','quad-core',8,'3x3 cm^2','1080x1920','medio',229,'alta gamma',5,01);

Insert into smartphone (id, name, ram, cpu, DisplayPip, DisplaySize, DisplayResolution, size, weight, notes, brand, opSys) values
    (18,'SiemensNew','3G','octa-core',8,'3x3 cm^2','1080x1920','medio',229,'alta gamma',5,02);
 
 Insert into smartphone (id, name, ram, cpu, DisplayPip, DisplaySize, DisplayResolution, size, weight, notes, brand, opSys) values
    (19,'SiemensOppo','3G','quad-core',8,'7x3 cm^2','720X480','alto',229,'alta gamma',5,02);
     