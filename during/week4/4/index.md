---
layout: default
---

## Wk 4 - Thursday - Serializers, Data

**Challenge:** [Include](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/include_challenge.rb)

**Problem of the Day:** [Assorted JSON](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/assorted_json/)

* Example: Continue work on [our first Rails app](https://github.com/tiyd-rails-2016-01/first_rails_app)
* Router
  * `rake routes`
  * Level 1 - we know this.
  * Level 2 - Naming addresses in a more custom way
  * Level 3 - Putting `id`s (or other `params`) in paths
* Seeds
* Faker
* Non-ActiveRecord Models (don't `generate model`!)
* Views and Controller Instance Variables
* JBuilder
  * `json.name @candidate.name`
  * `json.extract! @candidate, :id, :name, :party`
  * `json.array! @candidates, :id, :name, :party`
* Different kinds of API auth
  * Gems for accessing APIs
  * Token Auth in params
  * Token Auth in headers
    * [Article](https://www.codeschool.com/blog/2014/02/03/token-based-authentication-rails/)
  * Basic Auth (not so good)
  * OAuth - later

#### Did Not Yet Talk Through

* Callbacks
  * `before_create`, etc.
* CORS
* Testing Validations - not as important as I let on.

#### Lecture Notes

* [Class Video](https://youtu.be/tieaM0tOCgA)
* [Challenge Solution](challenge.rb)
* [Our First Rails Project, Day 3](https://github.com/tiyd-rails-2016-01/first_rails_app)

#### Useful Links

* [Remote Pairing Option - Screenhero](https://screenhero.com/)
* [Remote Pairing Option - Motepair](https://atom.io/packages/motepair)
* [Rails Guide on Callbacks](http://guides.rubyonrails.org/v2.3.11/activerecord_validations_callbacks.html#callbacks-overview)
* [Faker](https://github.com/stympy/faker)
* [JBuilder](https://github.com/rails/jbuilder)
* [All the rake db: commands](http://stackoverflow.com/questions/10301794/difference-between-rake-dbmigrate-dbreset-and-dbschemaload)
* [Long List of API options](apis)
* [Article on Pair Programming Styles](http://articles.coreyhaines.com/posts/thoughts-on-pair-programming/)
* [rack-cors gem](https://github.com/cyu/rack-cors)

#### Evening Reading

* Preview Reading: ...just the prework on HTML and CSS.  You're already ready for it.
* Listening: [Ruby Rogues - Pair Programming](http://devchat.tv/ruby-rogues/026-rr-pair-programming)

#### Weekend Assignment - IN PAIRS

* Assignment: [Build Your Own API](https://github.com/tiyd-rails-2016-01/build_your_own_api)
<!-- * Feedback: [Build Your Own API Feedback](feedback) -->
