with salaries as (

    select id , salary ,
    dense_rank() over (order by salary desc) as ranking
    from employee


)

select (
    select salary from salaries where ranking = 2 limit 1
) as SecondHighestSalary 