    SELECT id AS ID, first_name, last_name
FROM (
  SELECT employee_id AS ID, first_name, last_name
        FROM employees
    UNION
    SELECT contractor_id AS ID, first_name, last_name
        FROM contractors
         ) AS combined
WHERE id % 2 = 0