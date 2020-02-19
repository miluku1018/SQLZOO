-- The % is a wild-card it can match any characters

--1. Find the country that start with Y
SELECT name FROM world
  WHERE name LIKE 'Y%';

-- 2. Find the countries that end with y
SELECT name FROM world
  WHERE name LIKE '%Y';

-- 3. Find the countries that contain the letter x
SELECT name FROM world
  WHERE name LIKE '%X%';

-- 4. Find the countries that end with land
SELECT name FROM world
  WHERE name LIKE '%land'

-- 5. Find the countries that start with C and end with ia
SELECT name FROM world
  WHERE name LIKE 'C%' and name LIKE '%ia'

-- 6. Find the country that has oo in the name
SELECT name FROM world
  WHERE name LIKE '%oo%'

-- 7. Find the countries that have three or more a in the name
SELECT name FROM world
  WHERE name LIKE '%a%a%a%'

-- 8. Find the countries that have "t" as the second character
SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name

-- 9. Find the countries that have two "o" characters separated by two others
SELECT name FROM world
 WHERE name LIKE '%o__o%'

-- 10. Find the countries that have exactly four characters
SELECT name FROM world
 WHERE name LIKE '____'

-- 11. Find the country where the name is the capital city
SELECT name FROM world
 WHERE name = capital

-- 12. Find the country where the capital is the country plus "City".
SELECT name FROM world
 WHERE capital LIKE concat(name,  ' City');
--  City前面有空格

-- 13. Find the capital and the name where the capital includes the name of the country.
SELECT name, capital FROM world
 WHERE capital LIKE concat('%', name, '%' )

--  14. Find the capital and the name where the capital is an extension of name of the country. You should include Mexico City as it is longer than Mexico. You should not include Luxembourg as the capital is the same as the country.
SELECT capital , name
From world
WHERE capital LIKE concat('%',name,'%') AND capital <> name

-- 15. For Monaco-Ville the name is Monaco and the extension is -Ville.
-- Show the name and the extension where the capital is an extension of name of the country.
SELECT name, REPLACE (capital, name, '') as extension
FROM world
WHERE capital LIKE concat ('%',name,'%') AND capital <> name
