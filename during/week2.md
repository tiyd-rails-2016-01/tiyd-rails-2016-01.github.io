---
layout: default
---

## Week 2 - Overview

Students should be comfortable with the following at the end of this week:

* Agile Development
* Testing and TDD
* Blocks and Enumerable
* Inheritance, Composition, and Modules


## Important Links

* [Homework Submission Form](http://goo.gl/forms/2Gki2xhdO6)


## Tuesday - Inheritance and Testing

**Problem of the Day:** [Vehicle Inheritance](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/vehicle_inheritance)

* Random Items
  * `attr_reader`, `attr_accessor`
  * Splat operator (`*`)
  * predicate methods `?`
* Inheritance
  * Exploration: Start with Float object.  Explore superclasses and classes.
  * Begin in-class work on Vehicle exercise.
* Exceptions
  * Review how the exception problem was solved over the weekend.
  * Explore inheritance tree for exceptions
  * Example code: divide by zero in a method
  * Raising exceptions yourself
  * Inventing exception classes
* Gems
  * `gem list`
  * `gem install`
  * byebug
* Testing
  * Show tests for the Vehicle class. Use code already built.
  * Build out "12 Days of Christmas" for its test suite.
  * Sliming
* Git
  * Reason: Sharing code with others
  * `git clone`
  * `.gitignore` files
  * Forking
  * GitHub collaborators
  * `git pull`

#### Lecture Notes/Links

* [Class Video](http://youtu.be/-a4SJ6AMsZg)
* [Whiteboard - Inheritance Tree](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/026/original/object_tree.jpg?1442259530)
* Extra inheritance exercise: [National Expressions](https://github.com/masonfmatthews/rails_assignments/tree/master/unused/exercises/national_expressions)

#### Evening Reading

* Optional Reading: [Pro Git Ch. 2.5](http://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes)

#### Assignment - IN PAIRS

Begin [Battleship](https://github.com/tiyd-rails-2015-08/battleship).  Get tests 01-18 to pass.


## Wednesday - Modules and Composition

* Human Learning: Feedback Cycles and Agile Development
  * ON BOARD: Iteration
  * DIAGRAM: Finding a path to a moving point
* Random topics
  * You can return objects when true/false is expected (e.g. `ship.fire_at(x, y)`)
  * Ternary operator (e.g. `object.is_true? ? "Yes" : "No" `)
  * Class variables - DON'T
* OO: `public` vs `private`
  * Example: Daisy is a Builder.  She has many steps she takes to build a house.
  * We don't want to micromanage her and tell her HOW to build the house; we just want to tell her to build it and let her figure out the details.
  * Tell, don't ask
* Inheritance - is-a

**Problem of the Day 1:** [Vehicle Modules](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/vehicle_modules)

* Modules - acts-like-a/has-a-role
  * Also, use of modules for namespacing
  * Example: IronYard module with Instructor and Student classes.  Iron Yard students don't sleep, but a Student outside the module does.
  * Example: Bass.
    * Make two classes with the same name.  One for the fish and one for the instrument.
    * Each should have a `maximum_length` method, but they should return different things
    * You should also be able to call `Fish::PHYLUM` and get back `"Chordata"`

**Problem of the Day 2:** [Vehicle Composition](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/vehicle_composition)

* Composition - has-a
  * Sometimes you don't want the class itself yo know how to do everything that is asked of it.  Instead, you want the class to be able to ask its components to answer questions for it.

#### Lecture Notes/Links

* [Class Video](http://youtu.be/JAIGsFSt5SY)
* [Code from Homework Review](https://github.com/tiyd-rails-2015-08/battleship_day_one)
* [Composition Example from Class](w2-2/car.rb)
* [Module Example from Class](w2-2/vehicle.rb)

#### Evening Reading

* Optional Reading: [Article on Pair Programming Styles](http://articles.coreyhaines.com/posts/thoughts-on-pair-programming/)

#### Assignment - IN PAIRS

Continue [Battleship](https://github.com/tiyd-rails-2015-08/battleship).  Get tests 19-31 to pass.


## Thursday - Regex, Enumerable, and Blocks

**Problem of the Day:** [Find Names](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/find_names)

* Random topics
  * Show how easy refactoring is with good tests.  Move arrays out to methods.
  * Don't overdo it on instance variables
  * Keyword arguments
  * Monkey Patching: Change a string to add `.to_pig_latin`
  * Calling private methods with `.send()`
  * Arrays as stacks and queues (`.push(thing)`, `.pop`, `.unshift(thing)`, `.shift`)
* Regex
  * [XKCD on Regular Expressions](https://xkcd.com/1171/)
  * Example: Did the user just type in a number?
  * `\d`
  * `*`, `+`
  * `\A`, `\z` OR `^`, `$`
  * Example: Does a string store an IP address?
  * `()`
  * `[]`
  * `|`
  * `{1, 3}`
  * Literals
  * Example: Does a string contain a person's name?
  * `\w`
  * `\s`
  * `\W`, `\D`, `\S`
  * Example: Does a string contain a phone number?
  * `?`
  * In your spare time: how about email addresses?
* Using regex in Ruby
  * `.match`
  * `.scan`, `.sub`, `.gsub`
* Enumerable
  * `.each`
  * `.each_with_index`
  * `.map`
  * `.select` / `.reject`
  * `.all?` / `.any?`
  * `.reduce`
* Inline blocks (e.g. `array.map {|a| a.class}` instead of `do ... end`)

#### Lecture Notes/Links

* [Class Video](https://youtu.be/00KwfUZTmaw)
* [Battleship Review Code](https://github.com/tiyd-rails-2015-08/battleship_day_one)
* [Monkey Patching from Class](https://github.com/tiyd-rails-2015-08/battleship_day_one/blob/master/pig_latin.rb)
* [Regex in Ruby from Class](https://github.com/tiyd-rails-2015-08/battleship_day_one/blob/master/clinton.rb)
* [Whiteboard - Enumerable Methods](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/027/original/enumerable.jpg?1442259560)
* [Whiteboard - String Methods for using Regex](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/028/original/regex.jpg?1442259628)
* [Regular Expression Testing Site](http://www.rubular.com)
* [RegexOne - a great regex tutorial](http://regexone.com/)
* [Extreme Regex Tips for Ruby](http://idiosyncratic-ruby.com/11-regular-extremism.html)

#### Evening Reading

* Preview Reading: [Blocks and Procs](http://www.reactive.io/tips/2008/12/21/understanding-ruby-blocks-procs-and-lambdas/) - Only required down through "Procedures, AKA, Procs."  Read "Lambdas" and beyond if you dare.

#### Assignment - IN PAIRS

Complete [Battleship](https://github.com/tiyd-rails-2015-08/battleship).  Get all tests to pass.


## Friday - Test-Driven Development

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

### Evening Reading

* Preview Reading: [Relational Databases](https://quickleft.com/blog/introduction-to-database-design-on-rails/)
* Optional Reading: [Estimating Games](w2-4/estimating_games.pdf)
* Debugging Reading: [Ruby Rogues on Debugging](https://devchat.tv/ruby-rogues/150-rr-the-debugging-mindset-with-danielle-sucher)

## Weekend Assignment

[Employee Reviews](https://github.com/tiyd-rails-2015-08/employee_reviews)
