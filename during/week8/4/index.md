---
layout: default
---

## Wk 8 - Thursday - File Storage and S3

**Challenge:** [Double Loop Challenge](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/double_loop_challenge.rb)

<!-- **Challenge:** [JQuery (in Tabula Railsa)](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_jquery.md) -->

* Uploading Files without Paperclip
* Local Files using Paperclip
* Steps to Make Local Files Work
  * `form_tag html: { multipart: true } do |f|`
  * `file_field_tag :uploaded_file`
  * `gem "paperclip", "~> 4.2"`
  * In Migration: `add_attachment :table, :uploaded_file`
  * In model: `has_attached_file :uploaded_file`
  * In model: `validates_attachment_content_type :uploaded_file, :content_type => /\Atext\/.*\Z/`
  * `form_for @object, html: { multipart: true } do |f|`
  * `f.file_field :uploaded_file`
  * Strong Params
  * Amazon S3
* Steps to Make Cloud Files Work
  * `gem 'aws-sdk', '~> 1.6'`

Code for `config/application.rb`:

    config.paperclip_defaults = {
      :storage => :s3,
      :url =>':s3_domain_url',
      :path => '/:class/:attachment/:id_partition/:style/:filename',
      :s3_credentials => {
        :bucket => ENV['S3_BUCKET_NAME'],
        :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
        :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
      }
    }

#### Lecture Notes

* [Class Video]()
* [Challenge Code](w9-1/double_loop.rb)
* [Neonapster Code from Class](https://github.com/tiyd-rails-2016-01/neonapster)

#### Useful Links

* [Paperclip](https://github.com/thoughtbot/paperclip)
* [Paperclip and S3 on Heroku](https://devcenter.heroku.com/articles/paperclip-s3)
* [List of common media types](http://www.freeformatter.com/mime-types-list.html)
* [Explanation of Amazon Services](https://www.expeditedssl.com/aws-in-plain-english)

#### Evening Reading

* Preview Reading: [d3.js Primer](https://en.wikipedia.org/wiki/D3.js)
* Optional Reading: [Ruby Rogues: Staying Sharp](http://devchat.tv/ruby-rogues/164-rr-staying-sharp-with-dave-thomas)

#### Assignment

* Path One - New Material: [Reports on S3](https://github.com/tiyd-rails-2016-01/delayed_mailer_with_s3)
* Path Two - Review Ruby: [Tic Tac Toe](https://github.com/tiyd-rails-2016-01/overview_tic_tac_toe)
* Path Three - Review Rails: [Time Tracking App](https://github.com/tiyd-rails-2016-01/overview_time_tracking_app)


## Thursday - Project Prep

#### Lecture Notes

* [Class Video]()
* [rack-cors gem](https://github.com/cyu/rack-cors)

#### Useful Links

* [jBuilder docs](https://github.com/rails/jbuilder)

#### Evening Reading

* Preview Reading: [Paperclip](https://github.com/thoughtbot/paperclip)
* Optional Reading: [Ruby Rogues: Code Review Culture](http://devchat.tv/ruby-rogues/216-rr-code-review-culture-with-derek-prior)


## Weekend Assignment

* Assignment: [Stack Undertow](https://github.com/tiyd-rails-2016-01/stack_undertow)

<!-- [Gradebook Tickets](https://github.com/tiyd-rails-2016-01/gradebook_tickets) -->
