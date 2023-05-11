1.
SELECT * FROM files WHERE file_extension = 'avi' OR file_extension = 'mp4';
2.
SELECT friend_id, COUNT(*) AS messages_count 
FROM messages 
WHERE user_id = {user_id} 
GROUP BY friend_id 
ORDER BY messages_count DESC 
LIMIT 1;
3.
SELECT SUM(likes_count) AS total_likes_count 
FROM users 
WHERE age < 11;
4.
SELECT gender, SUM(likes_count) AS total_likes_count 
FROM users 
GROUP BY gender 
ORDER BY total_likes_count DESC 
LIMIT 1;
5.
SELECT user_id, COUNT(*) AS groups_count 
FROM user_groups 
GROUP BY user_id;
6.
SELECT group_id, COUNT(*) AS members_count 
FROM group_members 
GROUP BY group_id;
7.
SELECT user_id, SUM(likes_count) AS total_likes_count 
FROM users 
GROUP BY user_id 
ORDER BY total_likes_count DESC 
LIMIT 3;