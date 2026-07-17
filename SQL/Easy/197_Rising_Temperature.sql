with previous_day as (
    select id,
    recordDate,
    temperature,
    lag(temperature) over(order by recordDate) as previous_day_temp,
    lag(recordDate) over(order by recordDate) as previous_date
    from weather
)

select id from previous_day
where temperature > previous_day_temp
and datediff(recordDate, previous_date) = 1