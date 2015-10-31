---
layout: default
---

## Devise

This is a very simple rails app that allows users to log in with Facebook. It uses Devise/Omniauth for authentication.

##### Documentation
* [devise](https://github.com/plataformatec/devise)

##### In Gemfile
```ruby
gem 'devise'
```

##### Basic Devise
* rails generate devise:install (follow the instructions in terminal)
* rails generate devise MODEL (commonly User)
* rails generate devise:views (to customize the views)

##### Devise helpers
```ruby
before_action :authenticate_user!
user_signed_in?
current_user
```
## Omniauth

##### Documentation
* [omniauth-github](https://github.com/intridea/omniauth-github)

##### In Gemfile
```ruby
gem 'omniauth-github'
```

##### Use Omniauth to login with Facebook
* Authorize your app on github [here](https://github.com/settings/developers)
* In app setting set site URL and callback URL to "http://localhost:3000/"

##### In config/intializers/devise.rb
```ruby
config.omniauth :github, ENV['CLASS_GITHUB_ID'], ENV['CLASS_GITHUB_SECRET']
```
##### In routes.rb
```ruby
devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }
```
##### Create app/controllers/omniauth_callbacks_controller.rb

```ruby
class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def github
    user = User.from_omniauth(request.env["omniauth.auth"])

    if user.persisted?
      flash.notice = "Signed in!"
      sign_in_and_redirect user
    else
      session["devise.user_attributes"] = user.attributes
      redirect_to new_user_registration_url
    end
  end
end
```

##### In user.rb
```ruby
devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
    :omniauthable

    def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
      end
    end

    def self.new_with_session(params, session)
      if session["devise.user_attributes"]
        new(session["devise.user_attributes"], without_protection: true) do |user|
          user.attributes = params
          user.valid?
        end
      else
        super
      end
    end

    def password_required?
      super && provider.blank?
    end

    def update_with_password(params, *options)
      if encrypted_password.blank?
        update_attributes(params, *options)
      else
        super
      end
    end
```

##### Generate a migration
```ruby
class AddProviderAndUidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
  end
end
```
