# SQL

<!-- TOC depthFrom:2 -->

- [Helpful Stuff](#helpful-stuff)
    - [Functions](#functions)
    - [Subqueries](#subqueries)

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
