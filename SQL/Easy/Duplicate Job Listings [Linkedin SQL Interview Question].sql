with cte as (SELECT *,
row_number() over(partition by company_id, title order by job_id) as multiple_job_listings_rank
FROM job_listings)

select count(distinct company_id) from cte
where multiple_job_listings_rank > 1
;