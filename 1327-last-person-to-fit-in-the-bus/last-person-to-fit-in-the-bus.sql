with seperated_table as (

    select * , sum(weight) over (order by turn) as total_weight
    from queue
)

select person_name from seperated_table 
where total_weight <= 1000
order by turn desc
limit 1