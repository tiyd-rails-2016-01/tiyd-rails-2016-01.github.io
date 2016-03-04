---
layout: default
---

## Wk 5 - Tuesday - Rails Views and Forms

**Challenge:** [Discuss HTTP](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/discuss_http.md)

**Problem of the Day:** [Using ERB](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/my_first_erb)

* Random Topics
  * `#shipit` and putting a bow on it
  * `rails new .`
  * Fat Models, Skinny Controllers
  * HTTP Status Codes
  * Testing Validations - not as important as I let on
* Forms
  * Example: Add a student application form to the Plutonium Yard
  * `form`
  * `input` (all sorts)
  * `select`
  * `button`
  * `checkbox`
* View Intro without models
  * Example: A rails app that asks me for my time zone, then gives me the time
  * ERB
  * `strftime()`
* Rails helpers for making `form_tag` elements
  * Form, input, button, checkbox, textarea
  * `<%= f.select :teacher_id, Teacher.all.map {|t| [t.name , t.id]} %>`
  * `<%= f.collection_select :teacher_id, Teacher.all, :id, :name %>`

#### Lecture Notes

* [Class Video](https://youtu.be/ED1in8N1Q-s)
* [HTML and Time Zone Code from Class](https://github.com/tiyd-rails-2016-01/html_example)
* [Whiteboard - attributes, form elements, Request/Response](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/020/original/3.1.16_forms.JPG?1456857851)
* [International Coding](int.jpg)

#### Useful Links

* [`strftime()`](http://strftime.net/)
* [ALL the Rails View Helpers](http://api.rubyonrails.org/classes/ActionView/Helpers.html)

#### Evening Reading

* Preview Reading: [Rails Guide on Resources](http://guides.rubyonrails.org/routing.html#resource-routing-the-rails-default) - Read Ch. 2 through 2.6.
* Preview Reading: [Pro Git Ch. 3.3](http://git-scm.com/book/en/v2/Git-Branching-Branch-Management)
* Preview Reading: [Pro Git Ch. 3.4](http://git-scm.com/book/en/v2/Git-Branching-Branching-Workflows)
* Listening: [Ruby Rogues - Marketing Yourself](http://devchat.tv/ruby-rogues/187-marketing-yourself-as-a-software-developer-with-john-sonmez)

#### Assignment

* Assignment: [Recreate GitHub Profile](https://github.com/tiyd-rails-2016-01/github_profile)
* Feedback: [Recreate GitHub Profile Feedback](feedback)
