---
layout: default
---

## Wk 4 - Thursday - Serializers, Data

**Challenge:** [Include](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/include_challenge.rb)

**Problem of the Day:** [Assorted JSON](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/assorted_json/)

* Example: Continue work on Monday's [Employee and Department API](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/employee_and_department_api)
* Fixtures
* Seeds
* Views and Controller Instance Variables
* Callbacks
  * `before_create`, etc.
* JBuilder
  * `json.name @candidate.name`
  * `json.extract! @candidate, :id, :name, :party`
  * `json.array! @candidates, :id, :name, :party`
* Non-ActiveRecord Models (don't `generate`!)

#### Lecture Notes

* [Class Video](https://youtu.be/dL76vePFwbQ)
* [Code from Homework Review](https://github.com/tiyd-rails-2016-01/voting_api_homework_review)
* [Our First Rails Project, Day 3](https://github.com/tiyd-rails-2016-01/first_rails_app)

#### Useful Links

* [Rails Guide on Callbacks](http://guides.rubyonrails.org/v2.3.11/activerecord_validations_callbacks.html#callbacks-overview)
* [JBuilder](https://github.com/rails/jbuilder)
* [Long List of API options](../notes/apis)

#### Evening Reading

* Preview Reading: ...just the prework on HTML and CSS.  You're already ready for it.
* Optional Reading: [Ruby Rogues: Pair Programming](http://devchat.tv/ruby-rogues/026-rr-pair-programming)

## Extra Mini-lecture

* Router
  * `rake routes`
  * Level 1 - we know this.
  * Level 2 - Naming addresses in a more custom way
  * Level 3 - Putting `id`s (or other `params`) in paths
* Different kinds of API auth
  * Gems for accessing APIs
  * Token Auth in params
  * Token Auth in headers
    * [Article](https://www.codeschool.com/blog/2014/02/03/token-based-authentication-rails/)
  * Basic Auth (not so good)
  * OAuth - later
* Testing Validations - not as important as I let on.

#### Lecture Notes/Links

* [Mini-lecture Video](https://youtu.be/otGT7JyIJrk)
* [App about Routes (and unicorns)](https://github.com/tiyd-rails-2016-01/routes_app)

#### Assignment - IN PAIRS

* Assignment: [Build Your Own API](https://github.com/tiyd-rails-2016-01/build_your_own_api)
<!-- * Feedback: [Build Your Own API Feedback](feedback) -->
