WITH CTE AS (SELECT datacenter_id, SUM(monthly_demand) as demand
FROM forecasted_demand
GROUP BY 1)

SELECT d.datacenter_id, (monthly_capacity - CTE.demand) as spare_capacity
FROM datacenters d INNER JOIN CTE 
ON d.datacenter_id = CTE.datacenter_id
ORDER BY 1;