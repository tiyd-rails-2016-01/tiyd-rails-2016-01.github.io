---
layout: default
---

## Wk 4 - Tuesday - Rails and the Web

**Challenge:** [Composition](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/composition_challenge.rb)

**Problem of the Day:** [Folder Structure](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/folder_structure)

* Human Learning:
  * Scarring with age/experience
  * Good scarring example: Saving hardest things for last sucks
  * Bad scarring example: Given one bad experience, some people assume that Millenials are all lazy.
  * Bad scarring example: Taking risks on products costs too much money.
  * DIAGRAM: Topological map of scarring
  * ON BOARD: Be aware of your scarring
  * [Why Learning Code is Hard](http://www.vikingcodeschool.com/posts/why-learning-to-code-is-so-damn-hard)

* Example: Begin work on yesterday's [Employee and Department API](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/employee_and_department_api)
* The Web
  * IP addresses
  * Ports
  * Request/Response
  * Servers
* Rails Introduction
  * `rails new`
  * `bin/rails server`
  * Rails folder structure
  * MVC
  * `bin/rails generate model`
  * `bin/rake db:migrate`
  * `bin/rails generate migration`
  * `bin/rails console`
  * `bin/rails generate controller`
* Unit Testing in Rails

#### Lecture Notes

* [Class Video](https://youtu.be/L7x1560Iqp0)
* [Solid Solution to the HW](https://github.com/anjanamohanty/weather_report.git)
* [Awesome Solution to the Alert Part of the HW](alerts.rb)
* [Solid Solution to the Challenge](odd_array.rb)
* [Whiteboard - MVC](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/016/original/2.23.16_mvc.JPG?1456249414)
* [Our First Rails Project!!](https://github.com/tiyd-rails-2016-01/first_rails_app)

#### Useful Links

* [The Rails Doctrine](http://rubyonrails.org/doctrine/)
* [Rails Guides](http://guides.rubyonrails.org/index.html)

#### Evening Reading

* Reflection Reading: [Why Learning Code is Hard](http://www.vikingcodeschool.com/posts/why-learning-to-code-is-so-damn-hard)
* Preview Reading: [Building API Basics](http://www.theodinproject.com/ruby-on-rails/apis-and-building-your-own)
* Preview Reading: [Token Generation](http://ruby-doc.org/stdlib-1.9.3/libdoc/securerandom/rdoc/SecureRandom.html)

#### Assignment

* Assignment: Get a start on [Create a Voting API](https://github.com/tiyd-rails-2016-01/voting_api):
  * Review the requirements and create an ERD
  * Create a new Rails app
  * Create migrations and models as needed
  * Add associations and validations
  * Push to GitHub
  * Create at least two unit tests for each model
  * Make sure that you can run `rake` successfully to run the tests
  * Create the `candidates` controller with `index`, `show`, and `create` actions.
  * Make the index action return a JSON representation of all the candidates.
  * Make the show action return the first candidate.
  * Make the create action create a new candidate (in the database).  It can have any properties for now.
  * Make sure that you can run `rails server` and access the candidates index page in your browser.
  * Delete `README.rdoc` and make your own (filled in) `README.md`
  * Push to GitHub
  * Create an estimate for the number of hours you expect to need to complete this assignment tomorrow night
  * If you anticipate getting to hard or nightmare modes, read those modes before beginning work tonight and take those requirements into account in your models and migrations.
* Feedback: [Voting API Day 1 Feedback](feedback)
