---
layout: default
---

## Health Tracker Feedback

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
