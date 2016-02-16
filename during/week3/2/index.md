---
layout: default
---

## Wk3 - Tuesday - SQL

**Challenge:** [String Split](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/string_split_challenge.rb)

**Problem of the Day:** [Phone Numbers SQL](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/phone_numbers_sql)

* Migrations
  * `_on` fields
  * `_at` fields
  * `t.timestamps`
  * `t.decimal :amount, precision: 5, scale: 2`
  * Mention `add_column`, etc
  * SQLite Browser
  * Migrating up twice
  * `.gitignore` and database files
  * `t.timestamps`
  * `t.references`
* SQL
  * (Alternate between these questions together and PotD questions as student groups)
  * Find all people
  * Find all people with a last name of "Smith" (where)
  * Find the first names of people with a last name of "Matthews" (where, select)
  * (First PotD question)
  * Find the three people who were entered most recently (order, limit)
  * (Second PotD question)
  * Find the number of people who have each last name (group)
  * Find the last time at which a person with each last name was created (group, max)
  * (Third PotD question)
  * OPTIONAL: Find the most common first name for people with the last name of "Smith" (group, where)
  * OPTIONAL: (Fourth PotD question)
  * Find all email addresses, and show their owners' names with them (join)
  * (Fifth PotD question)
  * Find all people, and include all of their email addresses if they have them (left join)
  * Find all people with no e-mail addresses (left join, check for null)
  * (Sixth PotD question)
* Quick mention of ActiveRecord Methods which map to SQL clauses
* Query for Google-like search bar?

#### Lecture Notes

* [Class Video](https://youtu.be/LykwRq91izo)
* [Challenge Solution](challenge.rb)
* [Working Migration Example](migration.rb)
* [Uber-migration Example](uber.rb)

#### Useful Links

* [SQLite Browser](https://github.com/sqlitebrowser/sqlitebrowser/releases/)
* [Try SQL](https://www.codeschool.com/courses/try-sql)
* [SQL Teaching](https://www.sqlteaching.com/)
* [SQL Primer](https://github.com/tiy-austin-ror/primers/blob/master/sql-primer.md)
* [SQL Zoo Tutorials](http://sqlzoo.net/wiki/Main_Page)
* [SQL The Hard Way](http://sql.learncodethehardway.org/)
* [A Quick Intro to Databases](http://blog.dancrisan.com/a-quick-intro-to-databases)
* [SQL Fiddle](http://sqlfiddle.com/)

#### Evening Reading

* Preview Reading: [Database Objects in Ruby](https://quickleft.com/blog/introduction-to-database-design-on-rails-part-ii/)
* Preview Reading: [SQL to Rails Queries](http://guides.rubyonrails.org/v3.2.13/active_record_querying.html)
* Listening: [Ruby Rogues - What Makes Beautiful Code](https://devchat.tv/ruby-rogues/what-makes-beautiful-code)

#### Assignment

* Assignment: [Time Entry SQL Practice](https://github.com/tiyd-rails-2016-01/time_entry_sql_practice)
<!-- * Feedback: [Time Entry SQL Practice Feedback](feedback) -->
