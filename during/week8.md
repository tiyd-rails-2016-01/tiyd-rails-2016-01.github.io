---
layout: default
---

## Week 8 - Overview

Students should be comfortable with the following at the end of this week:

* Indices and Runtime Optimizations
* Mailers
* Background Processing
* File Uploads and S3

## Important Links

* [Challenge Submission Form](http://goo.gl/forms/JhvP6hX7VN)
* [Homework Submission Form](http://goo.gl/forms/2Gki2xhdO6)


## Monday - SQL and Efficiency

**Challenge:** [Primes](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/hard_primes_challenge.rb)

* Human Learning:
  * ON BOARD: Use short feedback loops
  * Wife and dinner example
  * Let's use them here as we work on primes.
* Runtimes and Primes
* Computational Complexity (`O(n)`, `O(lg n)`, `O(n^2)`, etc)
* Memory Usage
* Indices
  * Example: Build Bank app with branches, clients, accounts, and expenses.
  * Massive Seeds
  * Database Indices
  * Double indices
* Transactions
* Single-field search bar queries (ala Google)
* AREL
* Caching

#### Lecture Notes/Links

* [Class Video](https://youtu.be/CDg0TqZXE2c)
* [Mini-lecture Video](https://youtu.be/KSR6R5yYQ4g)
* [Primes Solution](w8-1/primes.rb)
* [Whiteboard - Pseudocode for Primes](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/052/original/pseudo_prime.JPG?1445287966)
* [Whiteboard - Indices](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/053/original/index_binary_tree.JPG?1445287981)
* [Bank app code from today](https://github.com/tiyd-rails-2015-08/bank_example)
* [AREL](https://github.com/rails/arel)
* [The guy who loves AREL](http://www.youtube.com/watch?v=ShPAxNcLm3o)
* [Porting Validations to PostgreSQL](http://shuber.io/porting-activerecord-validations-to-postgres/)
* [The N+1 Query Problem](http://blog.diatomenterprises.com/remove-n1-queries-in-your-ruby-on-rails-app/?utm_source=rubyweekly&utm_medium=email)
* [The complete guide to Rails caching](http://www.nateberkopec.com/2015/07/15/the-complete-guide-to-rails-caching.html)
* [Seeing your Database inside Rails](https://github.com/igorkasyanchuk/rails_db)

#### Evening Reading

* Current Topic Reading: [Joins vs. Includes](http://blog.bigbinary.com/2013/07/01/preload-vs-eager-load-vs-joins-vs-includes.html)
* Current Topic Reading: [How to Speed up ActiveRecord](http://blog.codeship.com/speed-up-activerecord/)
* Preview Reading: [Rails Guides: ActiveJob](http://edgeguides.rubyonrails.org/active_job_basics.html)

#### Assignment

[Database Optimizations](https://github.com/tiyd-rails-2015-08/database_optimizations)

## Tuesday - All Things Open Conference

Have fun!

## Wednesday - Background Processing

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

#### Lecture Notes/Links

* [Class Video](https://youtu.be/loJEKuJRNHU)
* [Bank app code from today](https://github.com/tiyd-rails-2015-08/bank_example)
* [Whiteboard - Stacks and Queues](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/054/original/stack_queue.JPG?1445448768)
* [Rails Guides: ActiveJob](http://edgeguides.rubyonrails.org/active_job_basics.html)
* [DelayedJob](https://github.com/collectiveidea/delayed_job)
* [Whenever gem](https://github.com/javan/whenever)

#### Evening Reading

* Preview Reading: [Rails Guides: ActionMailer](http://guides.rubyonrails.org/action_mailer_basics.html)
* Optional Reading: [Ruby Rogues: Technical Debt](http://devchat.tv/ruby-rogues/technical-debt)
* Optional Reading: [Toyota and Technical Debt](http://www.safetyresearch.net/blog/articles/toyota-unintended-acceleration-and-big-bowl-%E2%80%9Cspaghetti%E2%80%9D-code)

#### Assignment

* Path One - New Material: [Data File Import](https://github.com/tiyd-rails-2015-08/data_file_import)
* Path Two - Review Ruby: [Tic Tac Toe](https://github.com/tiyd-rails-2015-08/overview_tic_tac_toe)
* Path Three - Review Rails: [Time Tracking App](https://github.com/tiyd-rails-2015-08/overview_time_tracking_app)


## Thursday - Mailers

* Project Prep

#### Lecture Notes/Links

* [Class Video](https://youtu.be/XkpuJL3oP0E)
* [rack-cors gem](https://github.com/cyu/rack-cors)
* [jBuilder docs](https://github.com/rails/jbuilder)

#### Evening Reading

* Preview Reading: [Paperclip](https://github.com/thoughtbot/paperclip)
* Optional Reading: [Ruby Rogues: Code Review Culture](http://devchat.tv/ruby-rogues/216-rr-code-review-culture-with-derek-prior)


## Weekend Assignment

[Stack Undertow](https://github.com/tiyd-rails-2015-08/stack_undertow)

<!-- [Gradebook Tickets](https://github.com/tiyd-rails-2015-08/gradebook_tickets) -->
