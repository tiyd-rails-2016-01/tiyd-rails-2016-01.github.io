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
* Validations
  * Example: [Employee and Department Validations](https://github.com/masonfmatthews/rails_assignments/blob/master/unused/exercises/employee_and_department_validations)
  * `.save!`
  * `.create!`
  * `.update!`
* Associations
  * Calling methods inside a class definition
  * Macros are just methods being called in definitions
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

* [Class Video]()
* [Mini-lecture Video]()
* [Solution from Prior Night's HW](https://github.com/tiyd-rails-2016-01/database_solution)
* [Whiteboard - ActiveRecord commands](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/033/original/active_record.jpg?1442541734)
* [Whiteboard - Git Branching](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/034/original/git_branch.jpg?1442541750)

#### Useful Links

* [First Aid Git](http://ricardofilipe.com/projects/firstaidgit/#/)
* [Funny Names for Ruby Operators](http://ruby-operators.herokuapp.com/)
* [Rails validations](http://apidock.com/rails/ActiveModel/Validations/ClassMethods/validates)
* [Getting git branch in your PS1](https://github.com/jimeh/git-aware-prompt)

#### Evening Reading

* Preview Reading: [What is an API?](http://skillcrush.com/2012/07/04/api-2/)
* Preview Reading: [Working with APIs](http://www.theodinproject.com/ruby-on-rails/working-with-external-apis?ref=lnav) - Read down to and including the "Restrictions" section.
* Listening: [Ruby Rogues - Ruby Antipatterns](https://devchat.tv/ruby-rogues/032-rr-ruby-antipatterns)

## Weekend Assignment - IN PAIRS

* Assignment: [Legacy Associations and Validations](https://github.com/tiyd-rails-2016-01/legacy_associations_and_validations)
<!-- * Feedback: [Legacy Associations and Validations Feedback](feedback) -->
