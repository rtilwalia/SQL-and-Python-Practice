select user_id, ROUND(SUM(listen_duration)/60) as total_listen_duration,
COUNT(DISTINCT song_id) as unique_song_count
from listening_habits
GROUP BY 1;

