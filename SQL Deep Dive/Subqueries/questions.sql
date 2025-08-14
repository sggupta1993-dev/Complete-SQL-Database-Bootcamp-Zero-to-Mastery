/* TRY TO WRITE THESE AS JOINS FIRST */
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
Select c.firstname, c.lastname, c.orderid
  from orders AS O, (Select customerid, state, firstname, lastname
  from customers) AS c
  WHERE 0.customerid = c.customerid AND
  c.state IN ('OH', 'NY' ,'OR')
order by o.orderid

/*
* DB: Employees
* Table: employees
* Question: Filter employees who have emp_no 110183 as a manager
*/
Select emo_no, first_name, last_name
from employees
WHERE emp_no IN (
  Select emp_no from dept_emp
  Where dept_no = (Select dept_no
  from dept_manager WHERE emp_no = 110183))
order by emp_no
