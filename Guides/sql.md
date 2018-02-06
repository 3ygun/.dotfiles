# SQL

<!-- TOC depthFrom:2 -->

- [Helpful Stuff](#helpful-stuff)
    - [Subqueries](#subqueries)

<!-- /TOC -->

## Helpful Stuff
### Subqueries 

Nice article about [Writing Subqueries in SQL](https://community.modeanalytics.com/sql/tutorial/sql-subqueries/).

Subqueries in `FROM`:
  ```sql
  SELECT *
  FROM (
    SELECT * FROM X
  ) Xp
  ```
