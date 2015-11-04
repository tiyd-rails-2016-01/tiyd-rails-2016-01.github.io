---
layout: default
---

## W2 - Thursday - Test-Driven Development

**Problem of the Day:** [OddArray](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/odd_array_with_tdd)

* Agile Development
  * DIAGRAM: Feedback cycles of escalating size.
  * ON BOARD: Feedback loops:
    * Project post-mordems
    * Iteration retrospectives
    * Frequent client meetings
    * Daily standups
    * Run code and tests often, ideally after every change.
    * Pair programming
  * ON BOARD: Debugging is everywhere
  * First: squint hard
  * Second: read the error messages
  * Third: Test your assumptions
    * `puts` statements
    * `byebug`
  * Fourth: Break the problem into smaller problems and solve them individually
  * Fifth: Google
    * Two types of resources: tutorials and answers.
    * Stackoverflow is great for answers.
    * Blogs (and Rails Guides) are great for tutorials.
    * Be as specific as you can about which technologies you're using.  `ActiveRecord::Base` is a better start to your search than `Rails`
    * You can try questions (e.g. `How do I use ActiveRecord?`)
    * Limit to last year
    * Use Google to dig deeper into someone else's docs (e.g. `weather underground api sunrise`)
    * [XKCD on Old Forums](https://xkcd.com/979/)
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
  * Four steps:
    * Write a test which tests one (isolated) new behavior
    * Make sure your new test fails
    * Write code to make your test pass
    * Refactor while keeping all tests passing
  * Run through example TDD with ye olde [Albums and Artists](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/albums_and_artists).
  * `assert_in_delta`
  * Expect tests to run randomly (third class method [here](http://ruby-doc.org/stdlib-1.9.3/libdoc/minitest/unit/rdoc/MiniTest/Unit/TestCase.html))
  * ([Second contender for the best method ever](https://github.com/mperham/sidekiq/blob/master/lib/sidekiq.rb#L40))
* Human Learning
  * ON BOARD: Estimating is hard.

#### Lecture Notes/Links

* [Class Video](https://youtu.be/oVR6GuYp9sA)
* [Whiteboard - Feedback Loops and TDD](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/029/original/agile_tdd.jpg?1442259694)
* [Enumerable Method Code from Class](w2-4/enumberable_methods.rb)
* [OddArray](w2-4/odd_array.rb)
* [OddArrayTest](w2-4/odd_array_test.rb)

#### Useful Links

#### Evening Reading

* Preview Reading: [Relational Databases](https://quickleft.com/blog/introduction-to-database-design-on-rails/)
* Optional Reading: [Estimating Games](w2-4/estimating_games.pdf)
* Debugging Reading: [Ruby Rogues on Debugging](https://devchat.tv/ruby-rogues/150-rr-the-debugging-mindset-with-danielle-sucher)

#### Weekend Assignment

* Assignment: [Employee Reviews](https://github.com/tiyd-rails-2016-01/employee_reviews)
<!-- * Feedback: [User Input Statistics Feedback](feedback) -->
