---
layout: default
---

## Wk2 - Thursday - Blocks and TDD

**Optional Problem of the Day:** [OddArray](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/odd_array_with_tdd)

* Random topics
  * Keyword arguments
* Blocks/Procs/Lambdas/Methods
  * Methods as objects
    * `m = method(:my_method)`
    * `m.call`
  * Blocks
    * Code snippets that we pass to things like `.each` or `.map`
    * Passed in to a method using `{}` or `do ... end`
    * `yield` to a block inside a method
  * Procs
    * Crystalized blocks
    * `p = Proc.new {...block_stuff...}`
    * Passed in to a method using `method(&p)`
    * Called from within the method with `parameter.call`
  * Lambdas
    * Procs with their own scope on the call stack
    * `return` is limited to returning from just the lambda, not the method calling the lambda.
* TDD
  * Five steps:
    * Write a test which tests one (isolated) new behavior
    * Make sure your new test fails
    * Write code to make your test pass
    * Refactor while keeping all tests passing
    * Commit
  * Run through example TDD with ye olde [Albums and Artists](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/albums_and_artists).
  * `assert_in_delta`
  * Expect tests to run randomly (third class method [here](http://ruby-doc.org/stdlib-1.9.3/libdoc/minitest/unit/rdoc/MiniTest/Unit/TestCase.html))
  * ([Second contender for the best method ever](https://github.com/mperham/sidekiq/blob/master/lib/sidekiq.rb#L40))

#### Lecture Notes/Links

* [Class Video](https://youtu.be/UwJE42GkQFw)
* [Whiteboard](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/009/original/2.11.16_block.JPG?1455216516)
* [Albums and Artists TDD Repo](https://github.com/tiyd-rails-2016-01/albums_and_artists_with_tdd.git)
* [Keyword Arguments Example](keyword_arguments.rb)
* [Enumerable Method Code from Class](enumerable_methods.rb)

#### Useful Links

#### Evening Reading

* Preview Reading: [Relational Databases](https://quickleft.com/blog/introduction-to-database-design-on-rails/)

#### Weekend Assignment

* Assignment: [Employee Reviews](https://github.com/tiyd-rails-2016-01/employee_reviews)
<!-- * Feedback: [User Input Statistics Feedback](feedback) -->
