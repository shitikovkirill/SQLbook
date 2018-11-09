```
SELECT
    first_name || ' ' || last_name 
FROM
    customer
ORDER BY 
    first_name || ' ' || last_name;
```
```
SELECT
    first_name || ' ' || last_name AS full_name
FROM
    customer
ORDER BY 
    full_name;

```

```
SELECT
    column_list
FROM
    table_name AS alias_name;

```
```
SELECT a_very_long_table_name.column_name
FROM a_very_long_table_name;
```

```
SELECT table_name1.column_name, 
     table_name2.column_name
FROM table_name1
INNER JOIN table_name2 ON join_predicate;
```
```
SELECT t1.column_name, 
     t2.column_name
FROM table_name1 t1
INNER JOIN table_name2 t2 ON join_predicate;
```
```
SELECT
    colum_list
FROM
    table_name table_alias
INNER JOIN table_name ON join_predicate;
```