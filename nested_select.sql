SELECT -- outer query 
    *
FROM
    employees e
WHERE
    e.emp_no IN (SELECT  -- inner query -- starting from hear sql first execut inner query then after it's moives to outer query 
            dm.emp_no
        FROM
            dept_manager dm);
    

-- using where and in key work we can do this 