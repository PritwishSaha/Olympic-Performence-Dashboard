use olympics;
SELECT *
FROM olypics LIMIT 10;
SELECT COUNT(*) FROM olypics;
DESCRIBE olypics;
SELECT * FROM olypics WHERE Athlete IS NULL;
SELECT COUNT(*) FROM olypics WHERE Medal IS NULL;

ALTER TABLE olypics
RENAME COLUMN `ï»¿City` TO City;

UPDATE olypics
SET City = TRIM(city);
UPDATE olypics	
SET Sport = TRIM(sport);

-- Total Medals

SELECT COUNT(*) AS Total_Medals
FROM olypics
WHERE Medal IS NOT NULL;

-- Top 10 Countries

SELECT City,
COUNT(*) AS Total_Medals
FROM olypics
GROUP BY City
ORDER BY Total_Medals DESC
LIMIT 10;

-- Top Athletes

SELECT Athlete,
COUNT(*) AS Medals
FROM olypics
GROUP BY Athlete
ORDER BY Medals DESC
LIMIT 10;

-- Medals by Sport

SELECT Sport,
COUNT(*) AS Total_Medals
FROM olypics
GROUP BY Sport
ORDER BY Total_Medals DESC;

-- Gold Medal Leaders

SELECT Athlete,
COUNT(*) AS Golds
FROM olypics
WHERE Medal='Gold'
GROUP BY Athlete
ORDER BY Golds DESC;

-- Gender Distribution

SELECT Gender,
COUNT(*) AS Total
FROM olypics
GROUP BY Gender;

 -- Medal Trend by Year

SELECT Year,
COUNT(*) AS Medals
FROM olypics
GROUP BY Year
ORDER BY Year;

-- Country-wise Gold Medals

SELECT City,
COUNT(*) AS Golds
FROM olypics
WHERE Medal='Gold'
GROUP BY City
ORDER BY Golds DESC;

CREATE TABLE olympics_clean AS
SELECT *
FROM olypics;
SHOW TABLES;

SELECT COUNT(*) FROM olypics;

SELECT COUNT(*) FROM olympics_clean;

SELECT * FROM olympics_clean;
