---
layout: default
---

## Wk 5 - Tuesday - Rails Views and Forms

**Challenge:** [Discuss Ruby](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/discuss_ruby.md)

**Challenge:** [Discuss HTTP](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/discuss_http.md)

**Problem of the Day:** [Using ERB](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/my_first_erb)

* Random Topics
  * Anjana's Agile talk?
  * Daily standups as a practice
  * Pair programming as a practice
  * `#shipit` and putting a bow on it
  * `rails new .`
* Human Learning
  * ON BOARD: Interleave topics
  * ON BOARD: Elaborate rather than repeat
* Forms
  * Example: Add a student application form to the Plutonium Yard
  * `form`
  * `input` (all sorts)
  * `select`
  * `button`
  * `checkbox`
  * Rails helpers for making `form_tag` elements
  * `<%= f.select :teacher_id, Teacher.all.map {|t| [t.name , t.id]} %>`
  * `<%= f.collection_select :teacher_id, Teacher.all, :id, :name %>`
* View Intro without models
  * Example: A rails app that asks me for my time zone, then gives me the time.
  * ERB
  * `strftime()`

#### Lecture Notes

* [Class Video]()
* [Time Zone Code from Class](https://github.com/tiyd-rails-2016-01/time_zone)
* [Whiteboard - Request/Response](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/040/original/call_response.jpg?1443554806)

#### Useful Links

* [`strftime()`](http://strftime.net/)
* [ALL the Rails View Helpers](http://api.rubyonrails.org/classes/ActionView/Helpers.html)

#### Evening Reading

* Preview Reading: [Rails Guide on Resources](http://guides.rubyonrails.org/routing.html#resource-routing-the-rails-default) - Read Ch. 2 through 2.6.
* Optional Reading: [Ruby Rogues: Marketing Yourself](http://devchat.tv/ruby-rogues/187-marketing-yourself-as-a-software-developer-with-john-sonmez)

#### Assignment

* Assignment: [Recreate GitHub Profile](https://github.com/tiyd-rails-2016-01/github_profile)
<!-- * Feedback: [Recreate GitHub Profile Feedback](feedback) -->
