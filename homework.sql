-- 1. How many users have 'travel' in their bio?
-- Type: Counting, filtering by string pattern.
select COUNT(*) as 'users' 
FROM users 
WHERE bio LIKE '%travel%';

-- 2. How many posts were created between May 1st and May 10th, 2023?
-- Type: Counting, filtering by date range.
SELECT COUNT(*) AS 'posts' 
FROM posts 
WHERE created_at BETWEEN '2023-03-01' AND '2023-03-10';

-- 3. What user has the most comments? (return the user_id)
-- Type: Aggregation, grouping, ordering, limiting.
SELECT user_id, COUNT(*) as 'comments'
FROM comments 
GROUP BY user_id 
ORDER by COUNT(*) DESC 
LIMIT 1;

-- 4. How many users have usernames that end with 'er'?
-- Type: Counting, filtering by string pattern.
SELECT COUNT(*) AS 'users' 
FROM users 
WHERE username 
LIKE '%er';

-- 5. What post has the most comments? (return the post_id)
-- Type: Aggregation, grouping, ordering, limiting.
SELECT post_id, COUNT(*) 
FROM comments 
GROUP BY post_id 
ORDER BY COUNT(*) DESC 
LIMIT 1;

-- 6. How many different user IDs have posted content?
-- Type: Counting distinct values.
SELECT count(DISTINCT id) as 'ids' 
FROM posts;

-- 7. What user has the most people following them? (return the user_id)
-- Type: Aggregation, grouping, ordering, limiting.
SELECT followed_id, COUNT(*) 
FROM following
GROUP BY followed_id
ORDER BY COUNT(*) DESC
LIMIT 1;

-- 8. From users who joined in February 2023, how many have usernames containing 'john'?
-- Type: Counting, filtering by date and string pattern.

-- 9. From users who joined in March 2023, how many have usernames containing 'mar'?
-- Type: Counting, filtering by date and string pattern.

-- 10. What post has the most reactions? (return the post_id)
-- Type: Aggregation, grouping, ordering, limiting.