-- 1. Count the number of Movies vs TV Shows
```sql
SELECT 
    type,
    COUNT(*) as total_content
FROM netflix
GROUP BY 1;
```


-- 2. Find the most common rating for movies and TV shows
WITH RatingCounts AS (
    SELECT 
        type,
        rating,
        COUNT(*) AS rating_count
    FROM netflix
    GROUP BY type, rating
),
RankedRatings AS (
    SELECT 
        type,
        rating,
        rating_count,
        RANK() OVER (PARTITION BY type ORDER BY rating_count DESC) AS rank
    FROM RatingCounts
)
SELECT 
    type,
    rating AS most_frequent_rating
FROM RankedRatings
WHERE rank = 1;


-- 3. List all movies released in a specific year (2020)
SELECT * FROM netflix
WHERE type = 'Movie' 
  AND release_year = 2020;


-- 4. Find the top 5 countries with the most content on Netflix
SELECT 
    TRIM(UNNEST(STRING_TO_ARRAY(country, ','))) AS country, 
    COUNT(*) AS total_content
FROM netflix
GROUP BY country
ORDER BY total_content DESC
LIMIT 5;


-- 5. Identify the longest movie
SELECT * FROM netflix
WHERE type = 'Movie'
ORDER BY SPLIT_PART(duration, ' ', 1)::INT DESC
LIMIT 1;


-- 6. Find content added in the last 5 years
SELECT * FROM netflix
WHERE TO_DATE(date_added, 'Month DD, YYYY') >= CURRENT_DATE - INTERVAL '5 years';


-- 7. Find all content by director 'Rajiv Chilaka'
SELECT * FROM (
    SELECT *,
        TRIM(UNNEST(STRING_TO_ARRAY(director, ','))) as director_name
    FROM netflix
) AS t
WHERE director_name = 'Rajiv Chilaka';


-- 8. List all TV shows with more than 5 seasons
SELECT * FROM netflix
WHERE type = 'TV Show'
  AND SPLIT_PART(duration, ' ', 1)::INT > 5;


-- 9. Count content items in each genre
SELECT 
    TRIM(UNNEST(STRING_TO_ARRAY(listed_in, ','))) as genre,
    COUNT(*) as total_content
FROM netflix
GROUP BY 1
ORDER BY 2 DESC;


-- 10. Top 5 years with highest average content release in India
SELECT 
    release_year,
    COUNT(show_id) as total_release,
    ROUND(
        COUNT(show_id)::numeric / (SELECT COUNT(show_id) FROM netflix WHERE country = 'India')::numeric * 100, 2
    ) as avg_release_percentage
FROM netflix
WHERE country = 'India' 
GROUP BY 1
ORDER BY 3 DESC 
LIMIT 5;


-- 11. List all movies that are documentaries
SELECT * FROM netflix
WHERE listed_in ILIKE '%documentaries%';


-- 12. Find all content without a director
SELECT * FROM netflix
WHERE director IS NULL;


-- 13. Salman Khan movies in the last 10 years
SELECT * FROM netflix
WHERE casts ILIKE '%Salman Khan%'
  AND release_year > EXTRACT(YEAR FROM CURRENT_DATE) - 10;


-- 14. Top 10 actors in Indian produced movies
SELECT 
    TRIM(UNNEST(STRING_TO_ARRAY(casts, ','))) as actor,
    COUNT(*)
FROM netflix
WHERE country ILIKE '%India%'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;


-- 15. Content Categorization (Good vs Bad)
SELECT 
    category,
    type,
    COUNT(*) AS content_count
FROM (
    SELECT *,
        CASE 
            WHEN description ILIKE '%kill%' OR description ILIKE '%violence%' THEN 'Bad'
            ELSE 'Good'
        END AS category
    FROM netflix
) AS categorized_content
GROUP BY 1, 2
ORDER BY 2;
