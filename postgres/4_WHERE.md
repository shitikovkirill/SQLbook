```
SELECT column_1, column_2 … column_n
FROM table_name
WHERE conditions;
```
```
SELECT last_name, first_name
FROM customer
WHERE first_name = 'Jamie';
```
```
SELECT last_name, first_name
FROM customer
WHERE first_name = 'Jamie' AND
 last_name = 'Rice';
```
```
SELECT customer_id,
 amount,
 payment_date
FROM payment
WHERE amount <= 1 OR amount >= 8;
```

