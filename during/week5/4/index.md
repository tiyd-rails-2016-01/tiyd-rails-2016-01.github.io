---
layout: default
---

## Wk 5 - Thursday - Helpers/Partials, Heroku/Production

**Challenge:** [Rails Environments](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_environments.md)

* Dev vs. Test vs. Production
* Rails Servers (WEBrick vs. Mongrel vs. Puma)
* Git
  * `git remote` review
  * GitFlow
  * Pull Requests
  * Code Review on Pull Requests
* Heroku - GUEST SPEAKER: Ryan Daigle
  * Set up account
  * Create new Heroku project
  * Move `sqlite3` gem to development and test block
  * Add `pg` gem to production block
  * Add `puma` and `rails_12factor` gems to base of Gemfile
  * Create Procfile which says `web: bundle exec puma -C config/puma.rb`
  * Create `config/puma.rb` per [Heroku's instructions](https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server)
  * `bundle install --without production`
  * `heroku git:remote -a damp-peak-9050`
  * `git push heroku master`
  * `heroku run rake db:migrate`
  * `heroku run rake db:seed`

#### Lecture Notes

* [Class Video - Mason](https://youtu.be/PpUbKEot2qw)
* [Class Video - Ryan Part 1](https://youtu.be/FZPR4wup6OE)
* [Class Video - Ryan Part 2](https://youtu.be/BT9TnkIVH_U)
* [Heroku Whiteboard](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/022/original/3.3.16_heroku.JPG?1457032729)

#### Useful Links

* [Rails helpers tutorial](http://mixandgo.com/blog/the-beginner-s-guide-to-rails-helpers?utm_source=rubyweekly&utm_medium=email)
* [Heroku docs on installing Rails 4 apps](https://devcenter.heroku.com/articles/rails4)
* [Heroku docs on setting up Puma](https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server)

#### Evening Reading

* Preview Reading: [Syntactically Awesome Stylesheets](http://sass-lang.com/guide)
* Listening: [Ruby Rogues - Agile Communication](https://devchat.tv/ruby-rogues/049-rr-agile-communication-with-angela-harms)

#### Friday Mini-lecture

* Redirects
* `config.action_controller.action_on_unpermitted_parameters = :raise`
* Do `form_for` vs `form_tag` again!
* Partials
* Helpers

#### Lecture Notes

* [Mini-lecture Video](https://youtu.be/a6p20tBXs6s)

#### Weekend Assignment - IN PAIRS

* Assignment: [Health Tracker](https://github.com/tiyd-rails-2016-01/health_tracker)
<!-- * Feedback: [Health Tracker Feedback](feedback) -->
