CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      
      with salaries as (
        select id , salary , 
        dense_rank() over (order by salary desc) as rnk
        from employee
      )

      select salary from salaries where rnk = N
      limit 1 
  );
END


