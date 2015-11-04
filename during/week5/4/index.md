---
layout: default
---

## Wk 5 - Thursday - Helpers/Partials, Heroku/Production

**Challenge:** [Router](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_router.md)

* Starting Point: [Tabula Railsa](https://github.com/tiyd-rails-2016-01/tabula_railsa)

<!-- **Challenge:** [Rails Environments](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_environments.md) -->

* Agile
  * How did it feel to have to match GitHub's pages exactly?
  * ON BOARD: Beware Baby Duck Syndrome
  * [XKCD on Breaking Someone's Workflow](https://xkcd.com/1172/)
* Random Topics
  * `||=`
  * `config.action_controller.action_on_unpermitted_parameters = :raise`
* Partials
* Helpers
  * `.html_safe`
  * XSS
* Dev vs. Test vs. Production
* Rails Servers (WEBrick vs. Mongrel vs. Puma)
* Heroku
  * `git remote` review
  * Set up account
  * Create new Heroku project
  * Move `sqlite3` gem to development and test
  * Add `pg` and `rails_12factor` gems to production
  * Add `puma` gem to base of Gemfile
  * Create Procfile which says `web: bundle exec puma -C config/puma.rb`
  * Create `config/puma.rb` per [Heroku's instructions](https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server)
  * `bundle install --without production`
  * `heroku git:remote -a damp-peak-9050`
  * `git push heroku master`
  * `heroku run rake db:migrate`
  * `heroku run rake db:seed`

#### Lecture Notes

* [Class Video](https://youtu.be/qeGD6-jOUrM)
* [Mini-lecture Video](https://youtu.be/6pDnLJll0Qw)
* [Code Built in Class](https://github.com/tiyd-rails-2016-01/wallet_example)

#### Useful Links

* [Rails helpers tutorial](http://mixandgo.com/blog/the-beginner-s-guide-to-rails-helpers?utm_source=rubyweekly&utm_medium=email)
* [Heroku docs on installing Rails 4 apps](https://devcenter.heroku.com/articles/rails4)
* [Heroku docs on setting up Puma](https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server)

#### Evening Reading

* Preview Reading: [Syntactically Awesome Stylesheets](http://sass-lang.com/guide)
* Optional Reading: [Ruby Rogues: When to Use Modules](http://devchat.tv/ruby-rogues/022-rr-when-to-use-modules)

## Weekend Assignment - IN PAIRS

[Health Tracker](https://github.com/tiyd-rails-2016-01/health_tracker)
