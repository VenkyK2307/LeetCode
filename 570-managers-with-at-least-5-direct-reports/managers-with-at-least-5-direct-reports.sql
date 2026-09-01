select e1.name from employee e1
join employee e2 
on e2.managerId = e1.id 
group by e2.managerId
having count(*) >= 5