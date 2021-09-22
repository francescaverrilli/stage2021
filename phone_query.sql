Use Phone_dumb;
     
#1. select all smartphone in database
Select *
from smartphone;

Select *
from brand;

#2. Select all smartphones in the database with projection: name , ram , size and cpu

select name, ram, size, cpu
from smartphone
where name='T20' and ram='1G';

#3. Select name of smartphones with display resolution equal to 1080x1920;

select name, displayResolution
from smartphone
where displayResolution ='1080x1920';

# 4.Select name of smartphones with display resolution equal to 1080x1920 and 3 Gb ram;

select name, displayResolution
from smartphone
where displayResolution ='1080x1920' AND ram= '4G';

#5. Select all Galaxy smartphones;

select name, displayResolution
from smartphone
where name ='Galaxy';

#6. Select all Galaxy smartphones with dual core cpu

select name, displayResolution
from smartphone
where name ='Galaxy' AND cpu = 'dual-core' ;

#rebrand 
UPDATE smartphone
SET brand= 2
WHERE brand = 1;

select S.name, S.brand, B.id, B.name
from smartphone as S, brand as B
where B.name ='Samsung' AND S.cpu = 'dual-core';

#7. Select all smartphones with weight greater than or equal 150 grams;

select name, weight
from smartphone
where weight >=150;

#8. Select all smartphones with weight less than 150 grams;

select name, weight
from smartphone
where weight < 150;

#9. Select all smartphones sorted by display ppi

select name, displayPip
from smartphone
ORDER BY displayPip;

#10. Select all smartphones descendant sorted by display ppi

select name, displayPip
from smartphone
ORDER BY displayPip DESC;

#1. Select name and brand of all smartphones in the database;

select S.name, S.brand, B.name 
from smartphone as S, brand as B
ORDER BY B.name;

#2. Select name and opSys of all smartphones in the database sorted by name;

select name, opSys
from smartphone
ORDER BY name;

#3. Select name and opSys of all Android smartphones in the database descendant sorted by weight;

select S.name, S.opSys, O.description
from smartphone as S, opsys as O
where O.description= 'debian'
ORDER BY S.name DESC;

#4. Select name, brand, country of all smartphones in the database sorted by country;

select S.name, S.brand, C.name
from smartphone as S, country as C
ORDER BY C.name DESC;

#5 Select count of smartphones in the database with 3Gb ram

select COUNT(S.name)
from smartphone as S
Where S.ram = '3G';

#6 Select count of smartphones for each opSys in the database;

select count(S.opSys), S.opSys, O.description, O.id
from smartphone as S, opsys as O
WHERE S.opSys = O.id
Group by O.description;

#7. Select count of smartphones for each country in the database

SELECT COUNT(S.name), C.code, C.name, B.name, B.country
FROM smartphone as S, country as C, brand as B
Where S.brand = B.name 
GROUP BY S.brand;

#8 Select name of all countries and their brands, if any.

SELECT DISTINCT C.code, C.name, B.country, B.name
FROM country as C, brand as B
Where C.code = B.country;

#9 Create a branch from develop (name: cognomeSQL ) and push the SQL script containing the query (ex: phone_query.sql
