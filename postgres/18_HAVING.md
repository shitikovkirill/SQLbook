```
SELECT
 column_1,
 aggregate_function (column_2)
FROM
 tbl_name
GROUP BY
 column_1
HAVING
 condition;
 ```
 Следующий запрос получает общую сумму каждого клиента, используя GROUP BYпредложение:

```
SELECT
 customer_id,
 SUM (amount)
FROM
 payment
GROUP BY
 customer_id;
```

Вы можете применить HAVING предложение, чтобы выбрать единственного клиента, который тратил больше, чем 200на следующий запрос:
```
SELECT
 customer_id,
 SUM (amount)
FROM
 payment
GROUP BY
 customer_id
HAVING
 SUM (amount) > 200;
```