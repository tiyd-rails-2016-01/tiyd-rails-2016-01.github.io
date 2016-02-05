---
layout: default
---

## Wk 1 - Thursday - Classes

**Problem of the Day:** [Albums and Artists](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/albums_and_artists)

* Check-in on Readings
* Two hardest problems in computer science
* Note on methods: why didn't we call `random_number` every time through the loop in number_guessing?
* Nuances of `if` and `||`
  * What is "truthy" and what is "falsey" in Ruby?
  * What does `if` or `while` actually expect?
  * What does an `||` call return? (`true || false`, `"Mason" || false`, etc)
* Object Oriented Programming
  * In-Class Example: [Cell Phone Assignments](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/cell_phone_assignments)
  * What are objects?
    * State and behavior
    * State = instance variables
    * Behavior = methods
  * Everything in Ruby is messages being passed to objects!!!
    * Example of how we've been using strings.
  * What are classes?
    * Blueprints for objects
  * Encapsulation
* Math is messages being passed to objects as well!!!
  * `2 + 2.3`
  * `2.+(2.3)`
  * Overriding arithmetic operations (e.g. `def +(other) ... end`)
* Ruby code in multiple files
  * `require` redux
* Symbols
<!-- NOT ATTR_READER -->

Mini-lecture:

* Markdown
* Quality READMEs
* Agile Development
  * ON BOARD: Start small (this is a skill)
  * ON BOARD: Debugging is everywhere (this is a skill)
* How to Debug:
  * First: Squint hard
  * Second: Read the error messages
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


#### Lecture Notes

* [Class Video](https://youtu.be/-ppSFDk5Dts)
* [phone.rb](phone.rb)
* [person.rb](person.rb)
* [code.rb](code.rb)
* [All 3 Side-by-side](screenshot.png)
* [Apple example](apple.rb) (how to write a `+` method)

<!--
* [artist.rb](artist.rb)
* [album.rb](album.rb)
* [code.rb](artist_code.rb)
* [All 3 Side-by-side](screenshot2.png)
-->

#### Useful Links

#### Evening Reading

* Current Reading: [A good blog post about creating your own error classes](http://www.skorks.com/2009/09/ruby-exceptions-and-exception-handling/)
* Preview Reading: [Ruby Inheritance](http://rubylearning.com/satishtalim/ruby_inheritance.html)
* Listening: [Ruby Rogues - Debugging Mindset](https://devchat.tv/ruby-rogues/150-rr-the-debugging-mindset-with-danielle-sucher)

#### Weekend Assignment

* Assignment: [Currency Converter](https://github.com/tiyd-rails-2016-01/currency_converter)
<!-- * Feedback: [Currency Converter Feedback](feedback) -->
