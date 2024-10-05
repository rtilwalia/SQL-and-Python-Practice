SELECT advertiser_id, ROUND(CAST(SUM(revenue)/SUM(spend) AS numeric),2) as ROAS
FROM ad_campaigns 
GROUP BY 1
ORDER BY 1;
