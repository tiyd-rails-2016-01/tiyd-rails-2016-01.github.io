---
layout: default
---

## Wk 1 - Wednesday - Hashes and Nested Data Structures

**Problem of the Day:** [Phone Numbers](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/phone_numbers)

* Random Topics
  * Methods which return versus methods which have side effects.
  * `?` methods
  * `!` methods
  * `if` commands on one line
  * `return`... is optional.
  * Parentheses when calling or defining methods... are optional.
  * Customizing your `PS1`
  * Flycut for copy history
  * Vertical select via Atom's Sublime-Style-Column-Selection package
* `nil` and default values for parameters
* Control Flow (in light of Number Guessing Game)
  * next (not lose a turn if you guess the same thing twice)
  * break (stop asking when the correct number is guessed)
  * return
  * exit
* POD Attempt 1: Array
  * Just names first.  Ask for everyone's name and display them all at the end.
  * How do I prevent duplicates when I enter a name more than once?
* Attempt 2: Set
  * Basic `require` from standard library
  * Core library vs. Standard library
* Attempt 3: Hash
  * Keep track of a phone number for each person
* Interlude: How do we show something other than a blank when a person hasn't had a phone number entered?
  * Use a ternary to output a nice "(Not Found)" string
  * What is "truthy" and what is "falsey" in Ruby?
  * What does `if` or `while` actually expect?
  * What does an `||` call return? (`true || false`, `"Mason" || false`, etc)
* Attempt 4: Hashes inside a Hash
  * Keep track of a phone number and an email address and a birthdate for each person
* Attempt 5: Arrays inside Hashes
  * Keep track of multiple email addresses for each person.
* Git/GitHub Conventions
  * Markdown
  * Quality READMEs
  * Good commit messages
  * [XKCD on commit messages](http://xkcd.com/1296/)

#### Lecture Notes

<!--
* [Class Video]()
* [Whiteboard - Side Effects vs. Return Values](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/023/original/side_effects_return.jpg?1442259389)
* [Contact Directory Code](contacts.rb)
-->

#### Useful Links

* Extra array-to-hash exercise: [Super-simple Search](https://github.com/masonfmatthews/rails_assignments/tree/master/unused/exercises/super_simple_search)
* Extra hash exercise: [Sorta-simple Search](https://github.com/masonfmatthews/rails_assignments/tree/master/unused/exercises/sorta_simple_search)
* [Markdown Reference](https://help.github.com/articles/markdown-basics/)
* [PS1 Variables Reference](http://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html)

#### Evening Reading

* Preview Reading: [Writing Classes in Ruby](http://rubylearning.com/satishtalim/writing_our_own_class_in_ruby.html)
* Listening: [Ruby Rogues - Impostor Syndrome](https://devchat.tv/ruby-rogues/107-rr-impostor-syndrome-with-tim-chevalier)
* Listening: [Developers and Depression](https://vimeo.com/78419167)

#### Assignment

* Assignment: [Blackjack Advisor](https://github.com/tiyd-rails-2016-01/blackjack_advisor)
<!-- * Feedback: [Blackjack Advisor Feedback](feedback) -->
