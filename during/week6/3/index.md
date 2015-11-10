---
layout: default
---

## Wk 6 - Wednesday - Authorization and Scope

**Challenge:** [REST](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_rest.md)

* Agile
  * ON BOARD: Start small
  * Example: Building a storefront app
* Random Topics
  * `BCrypt::Password.create("password", cost: 4)`
  * Don't set your root to be your login page
  * `flash` vs. `flash.now`
  * Render vs. Redirect
  * Multi-tenancy
  * `.ruby-version`
* HTTP Response Types (reminder)
* Access vs. Authentication vs. Authorization
  * Example: Lock Gradebook teachers down to seeing only their classes.
* Authorization Approaches
* Integration Tests
  * `get root_path`
  * `assert_redirected_to login_path`
  * `follow_redirect!`
  * `assert_template "new"`
  * `assert_select "a[href=#{logout_path}]", 1`

#### Lecture Notes

* [Class Video]()
* [Example Integration Test from Class](w6-3/login_logout_test.rb)
* [Whiteboard - Authorization Approaches](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/046/original/page_control.jpg?1444247820)

#### Useful Links


#### Evening Reading

* Preview Reading: [Nested Attributes](http://api.rubyonrails.org/classes/ActiveRecord/NestedAttributes/ClassMethods.html)
* Optional Reading: [`inverse_of`](http://viget.com/extend/exploring-the-inverse-of-option-on-rails-model-associations)
* Optional Reading: [Pro Git Ch. 3.5](http://git-scm.com/book/en/v2/Git-Branching-Remote-Branches)
* Optional Reading: [Pro Git Ch. 3.6](http://git-scm.com/book/en/v2/Git-Branching-Rebasing)

#### Assignment

* Assignment: Complete [Gradebook](https://github.com/tiyd-rails-2016-01/gradebook)
* Starting Point: [Part of Gradebook](https://github.com/tiyd-rails-2016-01/gradebook_day_2)
<!-- * Feedback: [Gradebook Day 2 Feedback](feedback) -->
