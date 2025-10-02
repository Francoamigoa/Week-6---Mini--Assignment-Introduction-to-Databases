# Week 6 Mini Assignment Introduction to Databases
For this mini assignment, I worked with the University Rankings dataset

## Database Connection
Connected to the SQLite database using DBeaver.

## Basic Analysis (Before CRUD)
- **Total rows:** 2,200  
- **Score:** min = 43.36, max = 100.0, avg = 47.80  
- **Publications:** min = 1, max = 1,000, avg = 459.91   
- **Patents:** min = 1, max = 871, avg = 433.35  
- **Alumni employment:** min = 1, max = 567 , avg = 357.11
- **Country with most universities:** USA (≈ 573 entries)

## CRUD Operations
### 1. Insert Operation (Insert a new university (Duke Tech) into the 2014 rankings)
 ```sql
  INSERT INTO university_rankings (institution, country, world_rank, year, score)
  VALUES ('Duke Tech', 'USA', 350, 2014, 60.5);
 ```
__Result:__ Inserted 1 new row (Duke Tech, 2014, USA, world_rank=350, score=60.5).

### 2. Query Operation (How many universities from Japan are in the global top-200 in 2013?)
 ```sql
SELECT COUNT(*) AS jp_top200_2013
    FROM university_rankings
    WHERE country = 'Japan'
      AND year = 2013
      AND world_rank <= 200;
 ```
__Result:__ 6 universities from Japan in the top-200 in 2013.

### 3. Update Operation (Correct Oxford’s miscalculated score in 2014 by adding +1.2 points)
 ```sql
 UPDATE university_rankings
    SET score = score + 1.2
    WHERE institution = 'University of Oxford' AND year = 2014;
 ```
__Result:__ 1 row updated. New score for University of Oxford (2014) = 98.71.

### 4. Delete Operation (Remove universities with score < 45 in 2015)
 ```sql
DELETE FROM university_rankings
    WHERE year = 2015 AND score < 45;
 ```
__Result:__  556 rows deleted.

## Basic Analysis (After  CRUD)
- **Total rows:** 1,645  
- **Score:** min = 43.36, max = 100.0, avg = 48.96  
- **Publications:** min = 1, max = 1,000, avg = 376.27   
- **Patents:** min = 1, max = 871, avg = 367.19  
- **Alumni employment:** min = 1, max = 567 , avg = 311.75 
- **Country with most universities:** USA (≈ 491 entries)

## Files
All SQL commands are saved in the /sql/ folder:
  - basic_analysis_before.sql
  - Query_CRUD_operations.sql
  - basic_analysis_after.sql

