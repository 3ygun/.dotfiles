# SQL

<!-- TOC depthFrom:2 -->

- [Helpful Stuff](#helpful-stuff)
    - [Functions](#functions)
    - [Subqueries](#subqueries)
    - [Find Index Size](#find-index-size)
- [Dialects](#dialects)
    - [MySQL & MariaDB](#mysql--mariadb)

<!-- /TOC -->

## Helpful Stuff

### Functions

- `GROUP_CONCAT` allows converting columns of data into rows

### Subqueries

Nice article about [Writing Subqueries in SQL](https://community.modeanalytics.com/sql/tutorial/sql-subqueries/).

Subqueries in `FROM`:

  ```sql
  SELECT *
  FROM (
    SELECT * FROM X
  ) Xp
  ```

### Find Index Size

Taken from [StackOverflow](https://stackoverflow.com/questions/781873/how-to-figure-out-size-of-indexes-in-mysql/36573801#36573801)

```sql
SELECT database_name, table_name, index_name,
ROUND(stat_value * @@innodb_page_size / 1024 / 1024, 2) size_in_mb
FROM mysql.innodb_index_stats
WHERE stat_name = 'size' AND index_name != 'PRIMARY'
ORDER BY size_in_mb DESC;
```

## Dialects

### MySQL & MariaDB

- [Comparison Opperators](https://dev.mysql.com/doc/refman/5.7/en/comparison-operators.html#operator_is)
    - `IS` vs `==` comparison
