---
layout: default
---

## Wk2 - Tuesday - Modules and Composition

* Human Learning
  * ON BOARD: Use short feedback loops
* Agile Principles
  * ON BOARD: Iterate often
  * ON BOARD: Gather and incorporate feedback
  * DIAGRAM: Finding a path to a moving point
* Agile Rituals
  * ON BOARD: Retrospectives
  * ON BOARD: Sprints/Iterations
  * ON BOARD: Daily Standups
* Classes
  * Object tree redux
  * Class methods
* Random topics
  * `''` vs `""`
  * You can return objects when true/false is expected (e.g. `ship.fire_at(x, y)`)
  * Class variables - [DON'T](http://blog.honeybadger.io/lexical-scoping-and-ruby-class-variables/)
  * Code Smells
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
* Git
  * `.gitignore` files
  * GitHub collaborators
  * `git pull`

#### Lecture Notes

* [Class Video](https://youtu.be/GNNAWEOF8-Q)
* [Composition Example from Class](car.rb)
* [Module Example from Class](vehicle.rb)
* [Namespacing Example from Class](bass.rb)
* [Board: Object Tree](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/006/original/ob2.9.16_2.JPG?1455036941)
* [Board: Agile](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/005/original/iterate2.9.16.JPG?1455036874)

#### Useful Links

* [Code Smells](http://us3.campaign-archive2.com/?u=1090565ccff48ac602d0a84b4&id=f7e471a9db&e=0f523bd725)

#### Evening Reading

* Preview Reading: [Regex One](http://regexone.com/)
* Listening: [Ruby Rogues - When to Use Modules](https://devchat.tv/ruby-rogues/022-rr-when-to-use-modules)

#### Assignment - IN PAIRS

* Assignment: Continue [Battleship](https://github.com/tiyd-rails-2016-01/battleship).  Get tests 19-31 to pass.
* Starting Point: [Battleship Day 2](https://github.com/tiyd-rails-2016-01/battleship_day_2)
<!-- * Feedback: [Battleship Day 2 Feedback](feedback) -->
