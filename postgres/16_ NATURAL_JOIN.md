```
SELECT
 *
FROM
 products
NATURAL JOIN categories;
```
```
 category_id | product_id |  product_name   | category_name
-------------+------------+-----------------+---------------
           1 |          1 | iPhone          | Smart Phone
           1 |          2 | Samsung Galaxy  | Smart Phone
           2 |          3 | HP Elite        | Laptop
           2 |          4 | Lenovo Thinkpad | Laptop
           3 |          5 | iPad            | Tablet
           3 |          6 | Kindle Fire     | Tablet
```

```
SELECT
 *
FROM
 products
INNER JOIN categories USING (category_id);
```

```
SELECT
 *
FROM
 city
NATURAL JOIN country;
```

```
 country_id | last_update | city_id | city | country
------------+-------------+---------+------+---------
```