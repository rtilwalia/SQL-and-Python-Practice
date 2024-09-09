SELECT card_name, MAX(issued_amount) - MIN(issued_amount) as difference
FROM monthly_cards_issued
GROUP BY 1
ORDER BY 2 desc
;