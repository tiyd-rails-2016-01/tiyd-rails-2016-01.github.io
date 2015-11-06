# Reflections for this class

* I'd like some better real-world examples about code which takes up too much memory, leaks, invokes garbage collection, etc.  jeg2 said he can do it "easily."  Maybe a search will give a starting point.
* Try remote pairing: https://atom.io/packages/motepair
* Need to have a starting point for day 2 of all multi-day assignments!
* Debugging EARLY.  Then again, explicitly, with JS
* More form_for vs form_tag
* Try to push off the shortcuts as late as possible. Save things like `render @people` for very late.

## Other readings/videos

* Developers and depression: https://vimeo.com/78419167
* A lever for the mind: https://www.youtube.com/watch?v=tJkoHFjoMuk
* Inventing on principle

## Not covered

* CI
* Decomposing Fat Models
* Ping-pong pairing
* Foreign Key Constraints
* Memory usage and find_each
* Delegation
  * `delegate :category, to: :phone_categories`
* Random Topics
  * Action on your server trying to access the API on your server
  * Deadlock
  * Software threading
  * Multi-core processors

# Reflections for the next class

* Clear up the difference between mocking and stubbing.
* http://blog.skylight.io/4-easy-ways-to-speed-up-your-rails-app/

# Other assignment ideas

* Minesweeper
* Add devise and OAuth to, say, the auction site
* Curriculum Management Tool
* Volunteer Coordination
* Hotel Accessibility Review Site
* Close a Github issue from the command line.

# Never got to

* Macros
  * https://pragmaticstudio.com/blog/2015/4/14/ruby-macros
* Threads
  * http://www.jstorimer.com/blogs/workingwithcode/8085491-nobody-understands-the-gil
* Singleton methods (`def dog1.hunt ... end`)
  * there's no such thing as a Class method.
* `define_method()`
* Simplecov
* Versioning in a Database
* Disabled_at pattern (soft delete)
* Single Table Inheritance
* scoped associations

    class Item < ActiveRecord::Base
      has_many :orders do
        def for_user(user_id)
          where(user_id: user_id)
        end
      end
    end

    Item.first.orders.for_user(current_user)
