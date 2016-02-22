---
layout: default
---

## Wk 4 - Monday - The Web and APIs

**Challenge:** [Classes](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/classes_challenge.rb)

<!-- **Challenge:** [Inheritance](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/inheritance_challenge.rb) -->

**Problem of the Day:** [Employee and Department API](https://github.com/masonfmatthews/rails_assignments/blob/master/exercises/employee_and_department_api)


* Efficiency
  * SQL versus Ruby solutions to the [Medium HW problems](https://github.com/tiyd-rails-2016-01/employee_reviews_with_db) from [last Wednesday night](https://github.com/tiyd-rails-2016-01/employee_reviews_solution)
  * Execute some of the code 100,000 times with different numbers of records and analyze the results
  * [XKCD on SQL Injection](https://xkcd.com/327/)
* Web Basics
  * Web Addresses
  * The Parts of a URL
  * Parameters
  * HTTP vs HTTPS (and Let's Encrypt)
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

#### Lecture Notes

* [Class Video](https://www.youtube.com/watch?v=sWXuocHcYiY)
* [Mini-lecture Video](https://youtu.be/FXqEixZJN1k)
* [Deparment and Employee with the Ruby Way vs the SQL Way](https://github.com/tiyd-rails-2016-01/employee_reviews_solution.git)
* [Example Code from Class](api_call.rb)
* [Whiteboard - The Internet and The Web]()

#### Useful Links

* [How DNS Works](https://howdns.works/)
* [Let's Encrypt](https://letsencrypt.org/howitworks/)
* [Stubbing, Mocking, and More](http://rubylogs.com/test-doubles-theory-minitest-rspec/)

#### Evening Reading

* Preview Reading: [Web App Development is Better](http://radar.oreilly.com/2014/01/web-application-development-is-different-and-better.html)
* Listening: [Ruby Rogues - Barriers to New Developers](https://devchat.tv/ruby-rogues/180-rr-barriers-to-new-developers-with-kinsey-ann-durham)

## Assignment

* Assignment: [Weather Report](https://github.com/tiyd-rails-2016-01/weather_report)
<!-- * Feedback: [Weather Report Feedback](feedback) -->
