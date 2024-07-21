# Toman Bike Shop (Data Analysis)

## Purpose Of The Project

The purpose of the project is to optimize bike rental operations, improve customer experience, and maximize revenue. This involves demand forecasting, dynamic pricing, targeted marketing, efficient inventory management, customer segmentation, and route optimization based on weather conditions. 


![Screenshot 2024-05-20 205221](https://github.com/Kanakgiri/Toman-Bike-Shop-Data-Analysis/assets/171118310/5b8b64a6-a55a-4589-8277-e911f8168742)


## About Data

The data includes information like Season, Month, Year, Holiday, Weekday, Temperature, Humidity, Rider_Type.
There are two data-sets of consecutive years which are appended for analysis containing 15 columns and 34,700 rows.

## Tools Used

- Microsoft Excel
- Power BI
- MySQL Workbench

## Data Analysis Workflow

- Create a Database
- Develop SQL Queries
- Connect Power BI to Database
- Build a Dashboard in Power BI
- Answer the Analysis Qusetions

## SQL Query

```create database bike_rent;

with cte as(
select * from bike_share_yr_0
union
select * from bike_share_yr_1)
select *,
		round(riders * price, 2) as revenue,
        round((riders * price) - COGS, 2) as profit
 from cte
join cost_table on cte.yr = cost_table.yr;

```

## Business Questions Answered

1. What is the rider demographic?
- There are 1 million Casual Riders and 3 million Registered Riders.

2. How do sales vary by the days of the week?
- During Weekdays there is an increase in sales from 7 AM to 9 AM in the Morning and 5 PM to 7 PM in the evening. During Weekends there is an increase in sales from 10 AM in the Morning to 6 PM in the evening.

3. What is the total Revenue and total Profit?
- The Total Revenue is 15 million and the Total Profit is 10.45 million.
