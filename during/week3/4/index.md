---
layout: default
---

## Wk3 - Thursday - Associations and Validations

**Challenge:** [Classes](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/classes_challenge.rb)

**Problem of the Day:** [Employee and Department Validations](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/employee_and_department_validations)

* Random Topics
  * Definitely don't commit `.sqlite3` files.
  * Two variables referring to the same record can get out of sync.
  * Efficiency
    * SQL versus Ruby solutions to the Medium HW problems
    * Execute some of the code 100,000 times with different numbers of records and analyze the results
  * [XKCD on SQL Injection](https://xkcd.com/327/)
* Agile Principles
  * Immerse yourself in the culture.
  * Read some every day.
  * Ruby Rogues and Ruby Weekly.
  * Dissecting a book vs drinking from a fire hydrant.
  * DIAGRAM: Developer spectrum.  Hammer-user all the way to shiny-object.
  * ON BOARD: Balance hammmer-user and shiny-object.
* Validations
  * Example: [Employee and Department Validations](https://github.com/masonfmatthews/rails_assignments/blob/master/unused/exercises/employee_and_department_validations)
  * `.save!`
  * `.create!`
  * `.update!`
* Associations
  * `dependent: :destroy` and `dependent: :restrict_with_exception`
  * Associations with non-standard foreign_keys
  * `has_many :through` (add `companies` table)
* Git
  * Reason: working with other developers on code
  * GitHub Organizations
  * `git pull` (again)
  * `git log`
  * SHAs
  * `git branch`
  * `git checkout`
  * `git merge`
  * `git stash`
  * Merge Conflicts
  * `git reset`

#### Lecture Notes/Links

* [Class Video](https://youtu.be/AzCBvUBEcow)
* [Solution from Prior Night's HW, built in class](https://github.com/tiyd-rails-2015-08/database_solution)
* [Whiteboard - ActiveRecord commands](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/013/original/2.17.16_ruby_sql.JPG?1455804640)

#### Useful Links

* [First Aid Git](http://ricardofilipe.com/projects/firstaidgit/#/)
* [Funny Names for Ruby Operators](http://ruby-operators.herokuapp.com/)
* [Rails validations](http://apidock.com/rails/ActiveModel/Validations/ClassMethods/validates)
* [Getting git branch in your PS1](https://github.com/jimeh/git-aware-prompt)

#### Evening Reading

* Preview Reading: [What is an API?](http://skillcrush.com/2012/07/04/api-2/)
* Preview Reading: [Working with APIs](http://www.theodinproject.com/ruby-on-rails/working-with-external-apis?ref=lnav) - Read down to and including the "Restrictions" section.
* Listening: [Ruby Rogues - Ruby Antipatterns](https://devchat.tv/ruby-rogues/032-rr-ruby-antipatterns)

#### Weekend Assignment - IN PAIRS

* Assignment: [Legacy Associations and Validations](https://github.com/tiyd-rails-2016-01/legacy_associations_and_validations)
<!-- * Feedback: [Legacy Associations and Validations Feedback](feedback) -->
