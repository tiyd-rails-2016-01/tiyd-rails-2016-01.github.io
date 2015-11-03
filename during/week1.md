


## Tuesday - Methods and Arrays

**Problem of the Day:** [The 12 Days of Christmas](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/twelve_days_of_christmas)

* Data Structures
  * Ranges
  * Arrays
  * `+` vs `<<`
  * `.each`
* More on Variables
  * Proper Ruby variable naming
  * Two names for the same variable
  * How variables are stored in memory
  * How memory is different from hard disk
  * Binary
  * How to store integers
  * How to store strings
  * Type conversions (`to_i`, `to_f`, etc)
  * `2.3+3.4` - Floating Point Errors
  * Decimal (later)
* Methods
  * Return values vs side effects (including `puts`)
  * Scope
  * Parameters
  * Default parameters
  * Defining the same method twice
* Common Error Messages
  * NameError (`undefined local variable`)
  * NoMethodError (`nil.reverse`)
  * ArgumentError
  * TypeError (`2+"1"`)
* Git
  * Reason: keep different versions over time
  * Reason: backups
  * `git init`
  * `git add`
  * `git commit`
  * New repository on GitHub
  * `git push`
* Editors (and pros and cons of the default vim)
* `rand`

#### Lecture Notes/Links

* [Class Video](http://youtu.be/AE0fepVBMkg)
* [Whiteboard - Git Commands](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/022/original/git.jpg?1442257420)
* [12 Days of Christmas Code](w1-2/12days.rb)
* [Not entering your GitHub password into git for every push](https://help.github.com/articles/caching-your-github-password-in-git/)
* Extra method exercise: [Five Monkeys](https://github.com/masonfmatthews/rails_assignments/tree/master/unused/exercises/monkeys_jumping_on_the_bed)
* Extra method exercise: [Random Number in a Range (Fish Story)](https://github.com/masonfmatthews/rails_assignments/tree/master/unused/exercises/random_in_range)

#### Evening Reading

* Preview Reading:

#### Assignment

[Number Guessing Game](https://github.com/tiyd-rails-2016-01/number_guessing)


## Wednesday - Hashes and Nested Data Structures

**Problem of the Day:** [Phone Numbers](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/phone_numbers)

* Random Topics
  * Methods which return versus methods which have side effects.  We only did side effects yesterday!
  * predicate methods
  * `if` commands on one line
  * `return`
  * Parentheses when calling or defining methods
  * Customizing your `PS1`
  * Flycut for copy history
  * Vertical select via Atom's Sublime-Style-Column-Selection package
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

#### Lecture Notes/Links

* [Class Video](http://youtu.be/q9qoNQiXTn8)
* [Whiteboard - Side Effects vs. Return Values](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/023/original/side_effects_return.jpg?1442259389)
* [Contact Directory Code](w1-3/contacts.rb)
* Extra array-to-hash exercise: [Super-simple Search](https://github.com/masonfmatthews/rails_assignments/tree/master/unused/exercises/super_simple_search)
* Extra hash exercise: [Sorta-simple Search](https://github.com/masonfmatthews/rails_assignments/tree/master/unused/exercises/sorta_simple_search)
* [Markdown Reference](https://help.github.com/articles/markdown-basics/)
* [PS1 Variables Reference](http://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html)

#### Evening Reading

* Preview Reading:

#### Assignment

[Blackjack Advisor](https://github.com/tiyd-rails-2016-01/blackjack_advisor)


## Thursday - Classes

**Problem of the Day:** [Albums and Artists](https://github.com/masonfmatthews/rails_assignments/tree/master/exercises/albums_and_artists)

* Check-in on Readings
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

#### Lecture Notes/Links

* [Class Video](http://youtu.be/pldYPC3dJrs)
* [phone.rb](w1-4/phone.rb)
* [person.rb](w1-4/person.rb)
* [code.rb](w1-4/code.rb)
* [All 3 Side-by-side](w1-4/screenshot.png)
* [artist.rb](w1-4/artist.rb)
* [album.rb](w1-4/album.rb)
* [code.rb](w1-4/artist_code.rb)
* [All 3 Side-by-side](w1-4/screenshot2.png)

#### Evening Reading

* Required Reading Needed for this Assignment: [A good blog post about creating your own error classes](http://www.skorks.com/2009/09/ruby-exceptions-and-exception-handling/)
* Preview Reading:

## Weekend Assignment

[Currency Converter](https://github.com/tiyd-rails-2016-01/currency_converter)
