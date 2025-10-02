
SELECT COUNT(*) AS total_rows_after
FROM university_rankings;


SELECT MIN(score) AS min_score_after,
       MAX(score) AS max_score_after,
       AVG(score) AS avg_score_after
FROM university_rankings;


SELECT MIN(publications) AS min_pubs_after,
       MAX(publications) AS max_pubs_after,
       AVG(publications) AS avg_pubs_after
FROM university_rankings;


SELECT MIN(patents) AS min_patents_after,
       MAX(patents) AS max_patents_after,
       AVG(patents) AS avg_patents_after
FROM university_rankings;


SELECT MIN(alumni_employment) AS min_alumni_after,
       MAX(alumni_employment) AS max_alumni_after,
       AVG(alumni_employment) AS avg_alumni_after
FROM university_rankings;


SELECT country, COUNT(*) AS n_universities_after
FROM university_rankings
GROUP BY country
ORDER BY n_universities_after DESC
LIMIT 10;