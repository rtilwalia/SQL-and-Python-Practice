SELECT p.page_id FROM page_likes pl
RIGHT JOIN pages p  
ON pl.page_id = p.page_id
GROUP BY 1
HAVING COUNT(user_id) = 0
ORDER BY 1;