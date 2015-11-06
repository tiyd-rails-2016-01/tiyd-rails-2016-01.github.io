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
  * ON BOARD: Daily standups
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

#### Lecture Notes

* [Class Video]()
* [Composition Example from Class](w2-2/car.rb)
* [Module Example from Class](w2-2/vehicle.rb)

#### Useful Links

#### Evening Reading

* Preview Reading: [Regex One](http://regexone.com/)
* Listening: [Ruby Rogues - When to Use Modules](https://devchat.tv/ruby-rogues/022-rr-when-to-use-modules)

#### Assignment - IN PAIRS

* Assignment: Continue [Battleship](https://github.com/tiyd-rails-2016-01/battleship).  Get tests 19-31 to pass.
* Starting Point: [Battleship Day 2](https://github.com/tiyd-rails-2016-01/battleship_day_2)
<!-- * Feedback: [Battleship Day 2 Feedback](feedback) -->
