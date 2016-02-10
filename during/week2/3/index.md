---
layout: default
---

## Wk2 - Wednesday - Regex and Enumerable

**Problem of the Day:** [Find Names](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/find_names)

* Random topics
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

#### Lecture Notes

<!--
* [Class Video]()
* [Whiteboard - Enumerable Methods](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/027/original/enumerable.jpg?1442259560)
* [Whiteboard - String Methods for using Regex](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/028/original/regex.jpg?1442259628)
* [Monkey Patching from Class](https://github.com/tiyd-rails-2016-01/battleship_day_one/blob/master/pig_latin.rb)
* [Regex in Ruby from Class](https://github.com/tiyd-rails-2016-01/battleship_day_one/blob/master/clinton.rb)
-->

#### Useful Links

* [Regular Expression Testing Site](http://www.rubular.com)
* [RegexOne - a great regex tutorial](http://regexone.com/)
* [RegexCrossword](https://regexcrossword.com/)
* [Extreme Regex Tips for Ruby](http://idiosyncratic-ruby.com/11-regular-extremism.html)

#### Evening Reading

* Preview Reading: [Blocks and Procs](http://www.reactive.io/tips/2008/12/21/understanding-ruby-blocks-procs-and-lambdas/) - Only required down through "Procedures, AKA, Procs."  Read "Lambdas" and beyond if you dare.

#### Assignment - IN PAIRS

* Assignment: Complete [Battleship](https://github.com/tiyd-rails-2016-01/battleship).  Get all tests to pass.
* Starting Point: [Battleship Day 3](https://github.com/tiyd-rails-2016-01/battleship_day_3)
<!-- * Feedback: [Battleship Day 3 Feedback](feedback)
* Final Solution: [Battleship Solution](https://github.com/tiyd-rails-2016-01/battleship_solution)-->
