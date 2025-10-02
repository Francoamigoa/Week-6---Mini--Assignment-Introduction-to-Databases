SELECT COUNT(*) AS total_rows_before
FROM university_rankings;


SELECT MIN(score) AS min_score_before,
       MAX(score) AS max_score_before,
       AVG(score) AS avg_score_before
FROM university_rankings;


SELECT MIN(publications) AS min_pubs_before,
       MAX(publications) AS max_pubs_before,
       AVG(publications) AS avg_pubs_before
FROM university_rankings;


SELECT MIN(patents) AS min_patents_before,
       MAX(patents) AS max_patents_before,
       AVG(patents) AS avg_patents_before
FROM university_rankings;


SELECT MIN(alumni_employment) AS min_alumni_before,
       MAX(alumni_employment) AS max_alumni_before,
       AVG(alumni_employment) AS avg_alumni_before
FROM university_rankings;

SELECT country, COUNT(*) AS n_universities
FROM university_rankings
GROUP BY country
ORDER BY n_universities DESC

LIMIT 10;
