```
SELECT
 column_1,
 column_2
FROM
 tbl_name_1
UNION
SELECT
 column_1,
 column_2
FROM
 tbl_name_2;
```
Следующие правила применяются к запросам:

Оба запроса должны возвращать одинаковое количество столбцов.
Соответствующие столбцы в запросах должны иметь совместимые типы данных.

```
SELECT *
FROM
 sales2007q1
UNION ALL
SELECT *
FROM
 sales2007q2;
```
```
SELECT *
FROM
 sales2007q1
UNION ALL
SELECT *
FROM
 sales2007q2
ORDER BY 
 name ASC,
 amount DESC;
```


