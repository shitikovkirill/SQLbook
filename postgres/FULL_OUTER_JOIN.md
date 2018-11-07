```
SELECT * FROM A
FULL [OUTER] JOIN B on A.id = B.id;
```

```
# SELECT * FROM departments;
 department_id | department_name
---------------+-----------------
             1 | Sales
             2 | Marketing
             3 | HR
             4 | IT
             5 | Production
(5 rows)
```

```
# SELECT * FROM employees;
 employee_id |  employee_name  | department_id
-------------+-----------------+---------------
           1 | Bette Nicholson |             1
           2 | Christian Gable |             1
           3 | Joe Swank       |             2
           4 | Fred Costner    |             3
           5 | Sandra Kilmer   |             4
           6 | Julia Mcqueen   |
(6 rows)
```

```
SELECT
 employee_name,
 department_name
FROM
 employees e
FULL OUTER JOIN departments d ON d.department_id = e.department_id;
```

```
employee_name  | department_name
-----------------+-----------------
 Bette Nicholson | Sales
 Christian Gable | Sales
 Joe Swank       | Marketing
 Fred Costner    | HR
 Sandra Kilmer   | IT
 Julia Mcqueen   | NULL
 NULL            | Production
```

```
SELECT
 employee_name,
 department_name
FROM
 employees e
FULL OUTER JOIN departments d ON d.department_id = e.department_id
WHERE
 employee_name IS NULL;
```

```
 employee_name | department_name
---------------+-----------------
 NULL          | Production
```
```
SELECT
    employee_name,
    department_name
   FROM
    employees e
   FULL OUTER JOIN departments d ON d.department_id = e.department_id
   WHERE
    department_name IS NULL;
```

```
employee_name | department_name
---------------+-----------------
 Julia Mcqueen | NULL
```
