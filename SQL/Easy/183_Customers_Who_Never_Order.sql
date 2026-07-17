select c.name as customers 
from customers c
left join orders o
on c.id = o.customerid
where o.id is null

-- OR--

select c.name as customers
from customers c
where c.id not in (
    select o.customerid
    from orders o
)

--OR--

select c.name as customers
from customers c
where not exists (
    select 1
    from orders o
    where o.customerid = c.id
)