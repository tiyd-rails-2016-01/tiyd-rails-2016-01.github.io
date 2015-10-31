---
layout: default
---

## Week 4 - Overview

Students should be comfortable with the following at the end of this week:

* HTTP Verbs and Parameters
* Consuming APIs
* Creating APIs
* Rails Fundamentals
* Routing and Controllers


## Important Links

* [Challenge Submission Form](http://goo.gl/forms/JhvP6hX7VN)
* [Homework Submission Form](http://goo.gl/forms/2Gki2xhdO6)

## Monday - The Web and APIs

**Challenge:** [Inheritance](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/inheritance_challenge.rb)

**Problem of the Day:** [Employee and Department API](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/employee_and_department_api)

* Human Learning:
  * Scarring with age/experience
  * Good scarring example: Saving hardest things for last sucks
  * Bad scarring example: Given one bad experience, some people assume that Millenials are all lazy.
  * Bad scarring example: Taking risks on products costs too much money.
  * DIAGRAM: Topological map of scarring
  * ON BOARD: Be aware of your scarring
* Web Basics
  * Web Addresses
  * The Parts of a URL
  * Parameters
* What is an API?
  * Example: [Me at GitHub](https://api.github.com/users/masonfmatthews/events)
* On the web, what sort of data do we get back from APIs?
  * XML
    * [Who is my Representative](http://whoismyrepresentative.com/getall_mems.php?zip=27701)
  * JSON
    * [Twitter](https://dev.twitter.com/rest/public)
    * [Nutritionix](https://www.mashape.com/msilverman/nutritionix-nutrition-database)
    * [TrailAPI](https://www.mashape.com/trailapi/trailapi)
    * [Yoda Speak](https://www.mashape.com/ismaelc/yoda-speak)
    * [Marvel API](http://developer.marvel.com/docs)
    * [Blackjack API](http://deckofcardsapi.com/)
    * NPR
    * Flickr
    * Getty Images
    * LinkedIn
    * YouTube
    * Twitch
    * IGN
    * ESPN
    * ...and on and on...
  * CSV
    * [Static Data Sets](http://vincentarelbundock.github.io/Rdatasets/datasets.html)
  * Images
    * [Memegenerator](http://version1.api.memegenerator.net/)
    * [Placekitten](http://placekitten.com)
  * The broad notion of APIs:
    * [JQuery](http://api.jquery.com/)
    * [ActiveRecord::Base](http://apidock.com/rails/ActiveRecord/Base)
* HTTParty
* API without logging in
  * https://api.github.com/users/masonfmatthews/events
* API Keys
  * http://www.wunderground.com/weather/api/
* Keeping keys and passwords out of committed code (using ENV)
* Stubbing/Mocking
  * User Input
  * API Calls
  * Time-based Results

#### Lecture Notes/Links

* [Class Video](https://youtu.be/7HBQ9G0rumI)
* [Example Code from Class](https://github.com/tiyd-rails-2015-08/example_api_call)
* [Whiteboard - URLs and Formats](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/035/original/web_address.jpg?1442858121)
* [How DNS Works](https://howdns.works/)

#### Evening Reading

* Current Topic Reading (too long to be required, but skimming is nice): [Stubbing, Mocking, and More](http://rubylogs.com/test-doubles-theory-minitest-rspec/)
* REALLY GOOD Reading: [Why Learning Code is Hard](http://www.vikingcodeschool.com/posts/why-learning-to-code-is-so-damn-hard)
* Preview Reading: [Web App Development is Better](http://radar.oreilly.com/2014/01/web-application-development-is-different-and-better.html)

## Assignment

[Weather Report](https://github.com/tiyd-rails-2015-08/weather_report)


## Tuesday - Rails and the Web

**Challenge:** [Composition](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/composition_challenge.rb)

**Problem of the Day:** [Folder Structure](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/folder_structure)

* Example: Begin work on yesterday's [Employee and Department API](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/employee_and_department_api)
* The Web
  * IP addresses
  * Ports
  * Request/Response
  * Servers
* Rails Introduction
  * `rails new`
  * `bin/rails server`
  * Rails folder structure
  * MVC
  * `bin/rails generate model`
  * `bin/rake db:migrate`
  * `bin/rails generate migration`
  * `bin/rails console`
  * `bin/rails generate controller`
* Unit Testing in Rails

#### Lecture Notes/Links

* [Class Video](https://youtu.be/0eadDCofW8Y)
* [Whiteboard - MVC](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/036/original/rails_mvc.jpg?1442942971)
* [Our First Rails Project!!](https://github.com/tiyd-rails-2015-08/first_rails_app)
* [Rails Guides](http://guides.rubyonrails.org/index.html)

#### Evening Reading

* Preview Reading: [Building API Basics](http://www.theodinproject.com/ruby-on-rails/apis-and-building-your-own)
* Preview Reading: [Token Generation](http://ruby-doc.org/stdlib-1.9.3/libdoc/securerandom/rdoc/SecureRandom.html)

#### Assignment

Get a start on [Create a Voting API](https://github.com/tiyd-rails-2015-08/voting_api):

* Review the requirements and create an ERD
* Create a new Rails app
* Create migrations and models as needed
* Add associations and validations
* Push to GitHub
* Create at least two unit tests for each model
* Make sure that you can run `rake` successfully to run the tests
* Make sure that you can run `rails server` and see the default page in your browser
* Create the `candidates` controller with `index`, `show`, and `create` actions.
* Make the index action return a JSON representation of all the candidates.
* Make the show action return the first candidate.
* Make the create action create a new candidate (in the database).  It can have any properties for now.
* Make sure that you can access it in your browser
* Create
* Delete `README.rdoc` and make your own (filled in) `README.md`
* Push to GitHub
* Create an estimate for the number of hours you expect to need to complete this assignment tomorrow night

If you anticipate getting to hard or nightmare modes, read those modes before beginning work tonight and take those requirements into account in your models and migrations.


## Wednesday - Controllers and the Router

**Challenge:** [Enumerable](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/enumerable_challenge.rb)

**Problem of the Day:** [Model to JSON](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/model_to_json)

* Human Learning:
  * ON BOARD: Retrieve rather than re-expose
* Random Topics:
  * `rake db:rollback`
  * `rake db:drop`
  * Explore Rails' Gemfile
* Example: Continue work on Monday's [Employee and Department API](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/employee_and_department_api)
* `respond_to` in the controller
* HTML Verbs
  * GET (google.com)
  * POST (coursyl.com)
  * PATCH
  * DELETE
* Postman
* The Router
  * `config/routes.rb`
* Controllers
* Controller Testing

#### Lecture Notes/Links

* [Class Video](https://youtu.be/HGBqAr-X6Fk)
* [Whiteboard - HTTP Verbs... and more!](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/037/original/web_verbs.jpg?1443031466)
* [Our First Rails Project, Day 2](https://github.com/tiyd-rails-2015-08/first_rails_app)
* [Postman](https://chrome.google.com/webstore/detail/postman-rest-client/fdmmgilgnpjigdojojpjoooidkmcomcm?hl=en)

#### Evening Reading

* Preview Reading: [JBuilder Railscast](http://railscasts.com/episodes/320-jbuilder)
* Optional Git Reading: [Pro Git Ch. 3.3](http://git-scm.com/book/en/v2/Git-Branching-Branch-Management)
* Optional Git Reading: [Pro Git Ch. 3.4](http://git-scm.com/book/en/v2/Git-Branching-Branching-Workflows)

#### Assignment

[Create a Voting API](https://github.com/tiyd-rails-2015-08/voting_api).  After you're done, reflect on your estimate from last night.

  * In theory, your estimate should be better now that you've gotten part of the way through the project.
  * Document your number of hours worked at the end.


## Thursday - Serializers, Data

**Challenge:** [Include](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/include_challenge.rb)

**Problem of the Day:** [Assorted JSON](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/assorted_json/)

* Example: Continue work on Monday's [Employee and Department API](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/employee_and_department_api)
* Fixtures
* Seeds
* Views and Controller Instance Variables
* Callbacks
  * `before_create`, etc.
* JBuilder
  * `json.name @candidate.name`
  * `json.extract! @candidate, :id, :name, :party`
  * `json.array! @candidates, :id, :name, :party`
* Non-ActiveRecord Models (don't `generate`!)

#### Lecture Notes/Links

* [Class Video](https://youtu.be/dL76vePFwbQ)
* [Code from Homework Review](https://github.com/tiyd-rails-2015-08/voting_api_homework_review)
* [Our First Rails Project, Day 3](https://github.com/tiyd-rails-2015-08/first_rails_app)
* [Rails Guide on Callbacks](http://guides.rubyonrails.org/v2.3.11/activerecord_validations_callbacks.html#callbacks-overview)
* [JBuilder](https://github.com/rails/jbuilder)
* [Long List of API options](../notes/apis)

#### Evening Reading

* Preview Reading: ...just the prework on HTML and CSS.  You're already ready for it.
* Optional Reading: [Ruby Rogues: Pair Programming](http://devchat.tv/ruby-rogues/026-rr-pair-programming)

## Extra Mini-lecture

* Router
  * `rake routes`
  * Level 1 - we know this.
  * Level 2 - Naming addresses in a more custom way
  * Level 3 - Putting `id`s (or other `params`) in paths
* Different kinds of API auth
  * Gems for accessing APIs
  * Token Auth in params
  * Token Auth in headers
    * [Article](https://www.codeschool.com/blog/2014/02/03/token-based-authentication-rails/)
  * Basic Auth (not so good)
  * OAuth - later
* Testing Validations - not as important as I let on.

#### Lecture Notes/Links

* [Mini-lecture Video](https://youtu.be/otGT7JyIJrk)
* [App about Routes (and unicorns)](https://github.com/tiyd-rails-2015-08/routes_app)

#### Assignment - IN PAIRS

[Build Your Own API](https://github.com/tiyd-rails-2015-08/build_your_own_api)
