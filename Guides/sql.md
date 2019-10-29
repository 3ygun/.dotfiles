# SQL

<!-- TOC depthFrom:2 -->

- [Helpful Stuff](#helpful-stuff)
    - [Functions](#functions)
    - [Subqueries](#subqueries)
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

## Dialects

### MySQL & MariaDB

- [Comparison Opperators](https://dev.mysql.com/doc/refman/5.7/en/comparison-operators.html#operator_is)
    - `IS` vs `==` comparison
