INSERT INTO university_rankings (institution, country, world_rank, year, score)
VALUES ('Duke Tech', 'USA', 350, 2014, 60.5);

SELECT COUNT(*) AS jp_top200_2013
FROM university_rankings
WHERE country = 'Japan'
  AND year = 2013
  AND world_rank <= 200;


UPDATE university_rankings
SET score = score + 1.2
WHERE year = 2014
  AND institution = 'University of Oxford';

DELETE FROM university_rankings
WHERE year = 2015 AND score < 45;

