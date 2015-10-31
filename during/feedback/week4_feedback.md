---
layout: default
---

# Week 4 Homework Feedback

## Weather Report

#### Specific Tests Once You Have Mocking

The mocking work that you all did was excellent.  Once you have it set up, though, you can be more specific with your tests.  Take this one, for instance:

    def test_wind
      wind = CurrentConditions.new(82009)
      assert wind.display_wind.match(/\d*?\.\d MPH/)
    end

No need to use broad regular expressions on this one; now that you've got a data set in a JSON file, you can be very specific about which MPH you expect to get.  You'd hate to be matching a different field that happens to use MPH and not realize it.


#### Testing Mocking

Here's a mock I saw:

    class SunRiseSet
      private def get_data
        JSON.parse(File.open("astronomy.json").read)
      end
    end

Looks good... except the actual class in your application was `SunUpDown`.  This means that your mock wasn't a monkey-patch of an existing class, so the mock never ran.

In order to test that you've mocked properly, you can always shut off your wifi and see if your tests will still run.

#### No User Input on Tests

Here's what I got when I ran a test suite:

    [masonfmatthews weather_report]$ ruby test.rb
    What zip code would you like to search for weather details? Press enter
    to exit

When you write tests, you want to make sure that no user input is needed.  If the user has to type something, the tests are (a) slower and (b) potentially brittle.

#### Class Variables

OH NOOOOOO!!!

    class WeatherTest < Minitest::Test

      @@summary = ConditionsSummary.new(27516)
      @@tenday = TenDayForecast.new(27516)
      @@alerts = Alerts.new(70032)
      @@astronomy = Astronomy.new(27516)
      @@hurricanes = Hurricanes.new

      def test...
      end

      ...
    end

Please no!  Never class variables!  This is somewhat better:

    class WeatherTest < Minitest::Test

      def setup
        @summary = ConditionsSummary.new(27516)
        @tenday = TenDayForecast.new(27516)
        @alerts = Alerts.new(70032)
        @astronomy = Astronomy.new(27516)
        @hurricanes = Hurricanes.new
      end

      def test...
      end

      ...
    end

The best, though, is to create them as you need them rather than all the time.  Code duplication in tests is no big deal.

#### Breaking out of Loops

Someone added a feature that let users continue to enter zip codes until they chose to stop.  Here's a section of the code:

    ...

    def repeat
      loop do
        puts
        print "Wanna go again?(Y/N): "
        input = gets.chomp
        puts
        break if input == 'y' || input == 'Y'
        exit if input == 'n' || input == 'N'
      end
    end

    welcome
    loop do
      zip = input
      forecast(zip)
      repeat
    end

This gives `repeat` a ton of power, including the ability to bring everything to a screeching halt with `exit`.  It's not good to give methods that power, because they can trash everything that calls them.  Here's a better way to accomplish the same thing:

    ...

    def repeat
      loop do
        puts
        print "Wanna go again?(Y/N): "
        input = gets.chomp
        puts
        return true if input == 'y' || input == 'Y'
        return false if input == 'n' || input == 'N'
      end
    end

    welcome
    loop do
      zip = input
      forecast(zip)
      break unless repeat
    end

#### `p` vs. `puts`

As you know, `p` is great for putting arrays to the console.  However, it gets weird with strings:

    What location would you like information for?
    27278
    "The temperature is now 88.7ºF."
    "Sunrise was at 6:03am."
    "The sun will set at 8:23pm today."

This is the output that I got when running one program.  The extra quotes are because of using `p`.  For simple things like strings, just use `puts`.


## Voter API

#### Being the RIGHT user, not just ANY user

Some submissions had a line like this:

    user = Voter.where(security_key: api_key).first if api_key

This looks up a user based on an key.  However, this would let me in if I had ANY valid key.  In other words, I could use my personal key to vote as ANYONE.  As we discussed in class, you should look the Voter up by `params[:id]`, then check to see if the key matches that specific user.

#### The magic number to rule them all

So...

    test "shows only one race" do
      senate = Race.create!(name: "Senate")
      get :show, {id: 980190963}
      assert_response :success
    end

That's a serious magic number.  Instead of putting that in (which might be different every time), do this:

    test "shows only one race" do
      senate = Race.create!(name: "Senate")
      get :show, {id: senate.id}
      assert_response :success
    end

#### More magic numbers

This test... probably won't work:

    test "should be able to destroy" do
      assert_difference("Vote.count") do
        delete :destroy, {voter_id: 1, candidate_id: 1, race_id: 2}
      end
    end

First off, if you're deleting something, it's best to assert that the difference will be negative one, like this: `assert_difference("Vote.count", -1)`.

Second, when you destroy, all you need to pass it is an `id`.

Beyond that, the numbers are really arbitrary.  The right way to do this is to write fixtures, then change your test to look more like this.

    test "should be able to destroy" do
      assert_difference("Vote.count", -1) do
        delete :destroy, id: vote(:one).id
      end
    end

#### Positive and negative in most tests

Here's a test that works well:

    test "candidate_id" do
      two = Vote.new(voter_id: 1)
      refute two.save
    end

It will be better, though, if it also had an `assert`.  Right now this test would be perfectly happy if it was always impossible to save a vote.  Probably want to make sure that it WILL save if you give it everything that it needs.

#### Where to put `before_action`

This code (which did not run) is worth discussing:

    def show
      before_action :require_security_key
      render json: Voter.find_by_id(params[:id])
    end

If you're going to use `before_action`, it goes outside the method.  If you want it to apply to EVERY action in the controller, you write it like this:

    class VotersController...
      before_action :require_security_key
      ...
    end

If you want to apply to ONLY the show action, you write it like this:

    class VotersController...
      before_action :require_security_key, only: [:show]
      ...
    end

You can put more things in that array if you want it to only apply to a few actions.
