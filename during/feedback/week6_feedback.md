---
layout: default
---

# Week 6 Homework Feedback

## Health Tracker

#### Dividing by zero

This is the method we talked about in class which divides by zero:

    def daily_average
      days = (all.map {|d| d.date}).to_set.count
      total_ever/days
    end

Here's a fine way to take care of this so that the `ZeroDivisionError` is never raised:

    def daily_average
      days = (all.map {|d| d.date}).to_set.count
      days==0 ? 0 : total_ever/days
    end

Note the ternary operator!

#### Fixtures with hardcoded dates

Here are some fixtures from last night:

    one:
      value: 1
      created_at: 2015-06-08 19:31:57

    two:
      value: 4
      created_at: <%= Date.today %>

    three:
      value: 1
      created_at: <%= Date.today %>

The date was hardcoded in as 6/8 in order to signify "the future."  Tests passed wonderfully.

Then the future arrived.

We ran the tests today, and they FAILED.  Turns out that that `1` wasn't meant to be included in a method which calculated calories for today.  Today (and just today) it was.  Tomorrow the tests would start passing again.

Here's a better way to do this:

    one:
      value: 1
      created_at: <%= Date.today + 2.days %>

This future will never come!


#### Excessive checking

This code checks to see if there are no exercises...

    def self.calories_burned_today
      if Exercise.count == 0
        0
      else
        calories_today = Exercise.order(:calories_burned).map {|c| c.calories_burned if c.created_at.day == Time.now.day}
        calories_today.reject! {|c| c == nil}
        calories_today.sum
      end
    end

...but that check is not needed!  All the methods used later (`.map`, `.reject!`, and `.sum`) will work fine on an empty array.  This will work just as well:

    def self.calories_burned_today
      calories_today = Exercise.order(:calories_burned).map {|c| c.calories_burned if c.created_at.day == Time.now.day}
      calories_today.reject! {|c| c == nil}
      calories_today.sum
    end

Incidentally, when a `.map` has an `if` in it, it should probably just be preceded by a reject instead (and let's just use `reject` instead of `reject!` everywhere to not be destructive):

    def self.calories_burned_today
      today = Exercise.order(:calories_burned).reject {|c| c.created_at.day == Time.now.day}
      calories_today = today.map {|c| c.calories_burned}
      calories_today = calories_today.reject {|c| c == nil}
      calories_today.sum
    end

#### `#shipit`

Some people didn't `#shipit`!!!!

(And don't get me started on the READMEs... ;) )


#### Testing test logic

Take a look at this test:

    test "get_last_weight" do
      weights = Weight.all.sort {|a, b| a.date <=> b.date}
      assert_equal 130, weights.last.weight
    end

Sadly, it is not testing any methods on weight.  It is only testing the logic that is written out explicitly in the test, which makes no statements about the accuracy of the code.  Instead, the Weight class should have a method like this:

    def last_weight
      weights = Weight.all.sort {|a, b| a.date <=> b.date}
      weights.last.weight
    end

So then the test will look like this:

    test "get_last_weight" do
      assert_equal 130, Weight.last_weight
    end

Much better!

## Restaurant Menu

#### Markdown

Here is some markdown code from someone's README:

    This Rails application offers an easily maintained online menu for restaurant owners.  
    Bootstrap CSS stylings make the layout look clean and organized, and the easy-to-use
    functions (namely, add a dish, edit a dish, or delete a dish) allow for instant
    updates when inventory changes.
    *Credit to [Locally Preserved](www.locallypreserved.com) for the images.
    *Link to [Heroku App](http://floating-castle-4546.herokuapp.com/)
    *Link to [Workflow Diagram](https://www.lucidchart.com/invitations/accept/a81ff53d-927e-4456-9590-71727fdda1e1)

Sadly, the bulleted list didn't end up getting formatted nicely.  Markdown is finicky, and needs space both before the bulleted list and after each *, like this:

    This Rails application offers an easily maintained online menu for restaurant owners.  
    Bootstrap CSS stylings make the layout look clean and organized, and the easy-to-use
    functions (namely, add a dish, edit a dish, or delete a dish) allow for instant
    updates when inventory changes.

    * Credit to [Locally Preserved](www.locallypreserved.com) for the images.
    * Link to [Heroku App](http://floating-castle-4546.herokuapp.com/)
    * Link to [Workflow Diagram](https://www.lucidchart.com/invitations/accept/a81ff53d-927e-4456-9590-71727fdda1e1)

#### Extraneous instance variable

This index action was a bit suspicious:

    def index
      @plates = Plate.all
      @courses = Course.all
    end

Since this action shows a separate section for each course, with all of the plates for that course listed inside that section, the view loops over all courses, and for each does `course.plates`.  Because of this, the view never needed a list of ALL plates, so the `@plates` line can be removed from the controller.

## Teacherbook

#### Root path no-no

Take a look at these routes:

    root 'sessions#login'
    post 'sessions/login'
    get 'sessions/logout'

The first one's the only one of note here: you never want to set your root to be your login page.  If you do, people who have already logged in might type `www.myapp.com` into the address bar, then rage because they have to log in again.  Set your root to be the most important page INSIDE your app, then let it redirect back to login for folks who haven't signed in yet.


#### Get an instance variable while you're at it

Here's a method to check whether the user has logged in:

    def logged_in?
      if Teacher.find_by_id(session[:teacher_id])
      else
        redirect_to sessions_login_path, notice: "Please login"
      end
    end

First, of course, it's a little strange to have an `if` without code, so let's flip it around:

    def logged_in?
      unless Teacher.find_by_id(session[:teacher_id])
        redirect_to sessions_login_path, notice: "Please login"
      end
    end

But since we're doing the work to find a teacher, let's save it in an instance variable:

    def logged_in?
      @teacher = Teacher.find_by_id(session[:teacher_id])
      unless @teacher
        redirect_to sessions_login_path, notice: "Please login"
      end
    end

Now take a look at the other code in the same controller.  How many of these lines can we remove from this (Hint: lots!):

    before_action logged_in?

    def index
      @parents = Parent.all
      @teacher = Teacher.find_by_id(session[:teacher_id])
    end

    def show
      @teacher = Teacher.find_by_id(session[:teacher_id])
    end

    def new
      @parent = Parent.new
      @teacher = Teacher.find_by_id(session[:teacher_id])
    end

    def edit
      @teacher = Teacher.find_by_id(session[:teacher_id])
    end

    ...


#### Simple way to get all of a teacher's parents

These two methods are all different ways to get a set of parents for the logged in teacher:

    def index
      teacher = Teacher.find_by_id(session[:user_id])
      @parents = Parent.where(teacher_id: teacher.id).all
    end

    def index
      teacher = Teacher.find_by_id(session[:user_id])
      @parents = Parent.all.select{|parent| parent if parent.teacher_id == teacher.id}
    end

They both work!  The first one will take less memory, as `.where` does the looping work in the database and `.all.select` loads them all in memory in Rails, then picks a subset.  However, the best way is also the simplest way:

    def index
      @parents = Teacher.find_by_id(session[:user_id]).parents
    end

Since we have a `has_many` relationship set up, might as well use it, right?  Of course, if we take the prior feedback into account as well, we just do:

    def index
      @parents = @teacher.parents
    end
