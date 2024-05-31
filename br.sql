create database bike_rent;

with cte as(
select * from bike_share_yr_0
union
select * from bike_share_yr_1)
select *,
		round(riders * price, 2) as revenue,
        round((riders * price) - COGS, 2) as profit
 from cte
join cost_table on cte.yr = cost_table.yr;