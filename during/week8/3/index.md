---
layout: default
---

## Wk 8 - Mailers

**Challenge:** [Javascript (in Tabula Railsa)](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_javascript.md)

* Agile:
  * ON BOARD: Code review sessions
  * ON BOARD: Consider technical debt
* Random Topics
  * `pluck`
  * Using `pluck` in select_tags
  * `<%= f.select :teacher_id, Teacher.all.map {|t| [t.name , t.id]} %>`
  * `<%= f.collection_select :teacher_id, Teacher.all, :id, :name %>`
* Mailer Steps
  * `rails g mailer MailerNameMailer action_name other_action_name`
  * Modify views and mailers as you see fit
  * Add gmail style config to `environments/development.rb` per http://guides.rubyonrails.org/action_mailer_basics.html#action-mailer-configuration-for-gmail
  * Somewhere in our code: `MailerNameMailer.other_action_name.deliver_now`
  * `.deliver_later`
  * Example: send yesterday's report instead of displaying it.
* Mailgun

#### Lecture Notes

* [Class Video]()
* [Bank app code from today](https://github.com/tiyd-rails-2016-01/bank_example)

#### Useful Links

* [Rails Guides: ActionMailer](http://guides.rubyonrails.org/action_mailer_basics.html)
* [Mailgun](http://www.mailgun.com/)

#### Evening Reading

* Preview Reading: [Paperclip Documentation](https://github.com/thoughtbot/paperclip)
* Optional Reading: [Ruby Rogues - Ruby Antipatterns](http://devchat.tv/ruby-rogues/032-rr-ruby-antipatterns)

#### Assignment

* Path One - New Material: [Delayed Mailer](https://github.com/tiyd-rails-2016-01/delayed_mailer)
* Path Two - Review Ruby: [Tic Tac Toe](https://github.com/tiyd-rails-2016-01/overview_tic_tac_toe)
* Path Three - Review Rails: [Time Tracking App](https://github.com/tiyd-rails-2016-01/overview_time_tracking_app)
