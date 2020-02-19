--1. Show the population of Germany
SELECT population FROM world
  WHERE name = 'Germany';

--2. Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

--3. Show the country and the area for countries with an area between 200,000 and 250,000.
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000;

--4. 
-- name	population
-- Bahrain	1234571
-- Swaziland	1220000
-- Timor-Leste	1066409

SELECT name, population FROM world
 WHERE population BETWEEN 1000000 AND 1250000;

--5. Show the countries that end in A or L
SELECT name FROM world
 WHERE name LIKE '%a' OR name LIKE '%l'

--6. Show the countries with an area larger than 50000 and a population smaller than 10000000 
SELECT name, area, population FROM world
 WHERE area > 50000 AND population < 10000000

--7. Show the population density of China, Australia, Nigeria and France
SELECT name, population/area FROM world
 WHERE name IN ('China', 'Nigeria', 'France', 'Australia')