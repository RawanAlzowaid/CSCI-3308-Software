SELECT statecode, name
FROM states;

SELECT name,statecode,population_1950,population_2010
FROM counties
WHERE name LIKE 'Prince%'
ORDER BY statecode;

SELECT states.population_2010 
FROM states JOIN senators on (states.statecode=senators.statecode) 
WHERE senators.name='Richard Lugar';

SELECT COUNT(counties.name) 
FROM states JOIN counties on (states.statecode=counties.statecode)
WHERE counties.statecode='MD';

SELECT name
FROM states
WHERE admitted_to_union=(SELECT MAX(admitted_to_union) FROM states);


SELECT name 
FROM senators 
WHERE name not in (select chairman from committees) and affiliation = 'D'
ORDER BY name;


