/* Score increase due to research that found that women receive lower grades for being more shy with male passengers. (to protect / avoid harassment)  */

UPDATE DRIVERS
SET SURVEY_AVG = SURVEY_AVG + 0.1
WHERE SEX = 'F'AND SURVEY_AVG < 5 ;

SELECT *
FROM DRIVERS;

