-- same id 
-- ajacent only that mean relationship should be straight 
-- primary key to foregin key 

select * from departments;

SELECT 
    * 
FROM
    dept_manager
        JOIN
    departments ON dept_manager.dept_no = departments.dept_no;



SELECT 
    t2.first_name , t2.last_name , t2.gender , t1.dept_no
FROM
    dept_manager t1
        JOIN
    employees  t2 ON t1.emp_no = t2.emp_no;

    -- three table connection 

SELECT 
     t1.dept_no , t3.dept_name , count(t3.dept_name) as manager_number
FROM
    dept_manager t1
        INNER JOIN
employees t2 ON t1.emp_no = t2.emp_no inner join departments t3 on t1.dept_no = t3.dept_no group by t3.dept_name ;