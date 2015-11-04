---
layout: default
---

## Weather Report Feedback

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
