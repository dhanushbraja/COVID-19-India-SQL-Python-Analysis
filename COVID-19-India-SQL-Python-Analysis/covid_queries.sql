CREATE DATABASE covid_analysis;

USE covid_analysis;

show tables;

SELECT * FROM covid_19_india;

ALTER TABLE covid_19_india
RENAME COLUMN ï»¿Sno TO Sno;

SELECT SUM(Deaths) AS Total_Deaths
FROM covid_19_india;

SELECT SUM(Confirmed) AS Total_Confirmed
FROM covid_19_india;

DESCRIBE covid_19_india;

SELECT
`State/UnionTerritory`,
SUM(Deaths) AS Total_Deaths
FROM covid_19_india
GROUP BY `State/UnionTerritory`
ORDER BY Total_Deaths DESC;

SELECT
`State/UnionTerritory`,
SUM(Cured) AS Total_Cured
FROM covid_19_india
GROUP BY `State/UnionTerritory`
ORDER BY Total_Cured DESC;

SELECT
    `State/UnionTerritory`,
    SUM(Confirmed) AS Total_Confirmed
FROM covid_19_india
GROUP BY `State/UnionTerritory`
ORDER BY Total_Confirmed DESC;



