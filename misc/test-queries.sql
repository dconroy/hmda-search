select count (*) from hdma;

SELECT
	count(*)
FROM
	hdma
WHERE
	hdma.derived_race = 'Black or African American';


SELECT
	count(*)
FROM
	hdma
WHERE
	hdma.derived_ethnicity = 'Hispanic or Latino';

/* cook county is 17031 */

select lei from hdma where county_code = '17031';

select DISTINCT(lei) from hdma where county_code = '17031';


SELECT
	lei."Entity_LegalName"
FROM
	lei
WHERE
	lei.lei = '549300E3X7YDJIUENL65';



SELECT count(*), hdma.lei, lei."Entity_LegalName"
FROM
	hdma 
INNER JOIN lei ON hdma.lei = lei.lei
GROUP BY
	hdma.lei, lei."Entity_LegalName"
ORDER BY
	count(*)
	DESC
LIMIT 50;

SELECT count(*) from hdma where lei = '7H6GLXDRUGQFU57RNE97'