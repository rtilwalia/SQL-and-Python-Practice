SELECT sender_id, COUNT(content) as message_count FROM messages
WHERE DATE_PART('year', sent_date) = '2022' 
and DATE_PART('month', sent_date) = '08'
GROUP BY 1
ORDER BY COUNT(content) desc LIMIT 2;