---
layout: default
---

## Wk 8 - Tuesday - Background Processing

**Challenge:** [Double Loop Challenge](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/double_loop_challenge.rb)

* Random Topics
  * Polymorphic associations
  * AREL: `to_dos = ToDo.arel_table` followed by `where(to_dos[:title].matches("%#{search}%").or(to_dos[:title].matches("Default")))`
  * Swap space
  * CSV Writing
* Background Processing
  * Example: Bank Report Generation
  * Review stacks vs. queues
  * Queues in a Database Table
  * DelayedJob
  * ActiveJob
  * Limited amount of information you can pass to a job.
* Background Processing Steps  
  * Add gems `delayed_job_active_record` & `daemons`
  * `bundle install`
  * `rails generate delayed_job:active_record`
  * `rake db:migrate`
  * `rails generate job JobName`
  * Somewhere in our code: `JobName.perform_now(params[:something_important])`
  * In config/application.rb:
    * `config.active_job.queue_adapter = :delayed_job`
    * `config.autoload_paths << Rails.root.join('app/jobs')`
  * `bin/delayed_job start`
  * Somewhere in our code: `JobName.perform_later(params[:something_important])`
  * When you are done coding: `bin/delayed_job stop`

#### Lecture Notes

* [Class Video]()
* [Bank app code from today](https://github.com/tiyd-rails-2016-01/bank_example)
* [Whiteboard - Stacks and Queues](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/054/original/stack_queue.JPG?1445448768)

#### Useful Links

* [Rails Guides: ActiveJob](http://edgeguides.rubyonrails.org/active_job_basics.html)
* [DelayedJob](https://github.com/collectiveidea/delayed_job)
* [Whenever gem](https://github.com/javan/whenever)

#### Evening Reading

* Preview Reading: [Rails Guides - ActionMailer](http://guides.rubyonrails.org/action_mailer_basics.html)
* Optional Reading: [Ruby Rogues - Technical Debt](http://devchat.tv/ruby-rogues/technical-debt)
* Optional Reading: [Toyota and Technical Debt](http://www.safetyresearch.net/blog/articles/toyota-unintended-acceleration-and-big-bowl-%E2%80%9Cspaghetti%E2%80%9D-code)

#### Assignment

* Path One - New Material: [Data File Import](https://github.com/tiyd-rails-2016-01/data_file_import)
* Path Two - Review Ruby: [Tic Tac Toe](https://github.com/tiyd-rails-2016-01/overview_tic_tac_toe)
* Path Three - Review Rails: [Time Tracking App](https://github.com/tiyd-rails-2016-01/overview_time_tracking_app)
