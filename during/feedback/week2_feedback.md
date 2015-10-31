---
layout: default
---

# Week 2 Homework Feedback

## Currency Converter

#### README Style

I got a few READMEs where everything was either bold or all headers.  It's best to be a bit more judicious with your use of bold and headers.  The majority of your text should be standard paragraph text (No `##`s or `**`s around it.)

#### Write your own `.to_s`

Let's say that you add two currencies together.  You then want to `puts` the result to the screen so that you can see if it worked.  But curses, you get that stupid `#<Currency:0x007ffbe88c1360>` junk.  You could make TWO `puts` lines (one to display the amount, one to display the code), but that's a pain.

One common practice is to give your own classes a `.to_s` method.  Consider this one:

    def to_s
      "#{@amount} in #{@code}"
    end

Looks nice, and now `puts`ing a Currency object looks waaaaay better.

#### Default parameter selection

Here's some code from a Currency class:

    def initialize(entry, optional_amount = "000.00")
      @codes = {
        '$' => 'USD' , '€' => 'EUR', '¥' => 'JPY', '£' => 'GBP', '₽' => 'RUB',
        '₨' => 'INR', '₩' => 'KRW', '₦' => 'NGN', '₴' => 'UAH', '₭' => 'LAK',
        '₱' => 'PHP', '₮' => 'MNT', '₺' => 'TRY', '฿' => 'THB', '﷼' => 'SAR',
        '₹' => 'INR', '₲' => 'PYG', '₡' => 'CRC', '₸' => 'KZT', '₫' => 'VND' }
      if optional_amount == "000.00"
        ...
      end
    end

`"000.00"` is definitely an unlikely amount for someone to send in, but it's probably better to use a tradition default value like `nil`.  You can then say `if optional_amount.nil?` or `unless optional_amount`.

#### Methods for storing complex values

Regarding the code above, it's also a bit extraneous to put that hash in initialize.  It never ever changes, so you don't have to put it in a variable.  You could instead do this:

    def initialize(entry, optional_amount = "000.00")
      if optional_amount == "000.00"
        ...
      end
    end

    def codes
      { '$' => 'USD' , '€' => 'EUR', '¥' => 'JPY', '£' => 'GBP', '₽' => 'RUB',
        '₨' => 'INR', '₩' => 'KRW', '₦' => 'NGN', '₴' => 'UAH', '₭' => 'LAK',
        '₱' => 'PHP', '₮' => 'MNT', '₺' => 'TRY', '฿' => 'THB', '﷼' => 'SAR',
        '₹' => 'INR', '₲' => 'PYG', '₡' => 'CRC', '₸' => 'KZT', '₫' => 'VND' }
    end

... and now whenever you call `codes`, it's there!  It also has a nice side benefit of making your `def initialize` easier to read.

#### Comment Indentation

A minor thing, but comments should be indented the same way as code.  For instance:

    #checks that currency objects with same
    # currency amount and codes are equal
      def == (currency)
        code == currency.code && amount == currency.amount
      end

... should be ...

      #checks that currency objects with same
      #currency amount and codes are equal
      def == (currency)
        code == currency.code && amount == currency.amount
      end

#### A Classy Initialize

Take a look at this initialize method:

    def initialize(code, amount = nil)
      code_hash = {"$" => :USD, "€"=> :EUR,"¥"=> :JPY, "£"=>  :GBP}
      if amount
        @code = code.to_sym
        @amount = amount
      else
        @code = code_hash[code[0]]
        @amount = code[1..-1].to_f
      end
    end

It's very nice, and it allows you to either give it `"$1.20"` or `"USD", 1.2` as parameters.  Even better, it lets you enter `"USD"` the string OR `:USD` the symbol.  On the inside, it converts the field to a symbol, and if you call `to_sym` on a symbol, it just stays a symbol.  Very elegant.

#### `p` when you should return

Here's an `==` method from last night:

    def ==(other)
      if self.amount == other.amount && self.currency_code == other.currency_code
        p true
      else
        p false
      end
    end

Unfortunately, this method is a bit dangerous.  `p true` does also return true, but it's better to separate side effects like `p` from return values.  If, for instance, we had written `puts true`, it would NOT return true.  `puts` always returns nil.  This method would be better written as:

    def ==(other)
      if self.amount == other.amount && self.currency_code == other.currency_code
        p true
      else
        p false
      end
    end

or even better:

    def ==(other)
      self.amount == other.amount && self.currency_code == other.currency_code
    end

#### Methods inside methods

So, it's confession time.  There's something that I've been keeping from you: you can put methods inside methods.  However, the reason that I've been keeping it from you is that you SHOULDN'T.  Here's an example:

    def initialize(amount=0.0, code='$')
      currency_symbols = {"€" => "EUR", "$" => "USD"}
      def symbol_check(hash, string)
        hash.each do |key, value|
          if string.include?(key)
            return true
          end
        end
        return false
      end

      def symbol_get(hash, string)
        hash.each do |key, value|
          if string.include?(key)
            return key, value
          end
        end
      end

      if symbol_check(currency_symbols, amount)
        symbol, code = symbol_get(currency_symbols, amount)
        @amount = amount.delete(symbol).to_f
        @code = code
      else
        @amount = amount.to_f
        @code = code
      end
    end

That is ALL in `initialize`.  It works... but most would argue that it's hard to read.  There's no need to define that stuff all inside `initialize`, though, when you can do it immediately afterwards like this:

    def initialize(amount=0.0, code='$')
      currency_symbols = {"€" => "EUR", "$" => "USD"}

      if symbol_check(currency_symbols, amount)
        symbol, code = symbol_get(currency_symbols, amount)
        @amount = amount.delete(symbol).to_f
        @code = code
      else
        @amount = amount.to_f
        @code = code
      end
    end


    def symbol_check(hash, string)
      hash.each do |key, value|
        if string.include?(key)
          return true
        end
      end
      return false
    end


    def symbol_get(hash, string)
      hash.each do |key, value|
        if string.include?(key)
          return key, value
        end
      end
    end

Easier to follow now?

#### Simplifying `unless`

We totally got rid of an `if` in class, but we can do the same thing with `unless`.  Look at this:

    def != (other)
      unless @amount == other.amount && @code == other.code
        true
      else
        false
      end
    end

You might say "Just return `@amount == other.amount && @code == other.code`!"  Unfortunately, the `unless` means that we're doing the opposite.  Still, though, we can use `!`:

    def != (other)
      !(@amount == other.amount && @code == other.code)
    end

Tada!

#### Class Variables

Any variable that starts with `@@` (e.g. `@@count`) is called a "class variable."  Don't use them.  Really.  They are not friendly.  We'll talk about them in class tomorrow.


## Battleship

#### Doubly-defined Methods

In one `Grid` class I saw, the method `has_ship_on?` was defined twice, and the first one I saw just said:

    def has_ship_on?(x, y)
      false
    end

I was totally confused that test 18 passed.  Then I scrolled down and saw that the method was defined AGAIN, but in a meaningful way.  All this to say, it's best to not define the same method twice, as it will confuse other developers.

#### Leaving off the `else`

Check out this method:

    def sunk?
      if @coverage == []
        false
      elsif @hits == @coverage
        true
      end
    end

This stands out because there is no `else` clause.  Without the else, the method just returns `nil`.  That's okay, but it is a bit strange that this one method can return one of three possible values.  Instead, it's probably better to simplify this into one logical check with an `&&`.

    def sunk?
      @coverage != [] && @hits == @coverage
    end


#### Location of `require`

I saw a file today start the following way:

    class Ship
      require './hole.rb'

      attr_reader :length

      ...
    end

Although this works, it is common (and best) practice for the require to be OUTSIDE of any class definitions.

#### `%Q{}`

Here's some code:

      def display
    puts %Q{    1   2   3   4   5   6   7   8   9   10
      -----------------------------------------}


        10.times do |i|
          ...
        end
        ...
      end

As you've noticed from the tests, this is a quick way to create a string with multiple lines.  It's very helpful for tests, but it can cause problems when using it in your real code.  For instance, it makes indentation a MESS, as each space of indentation counts in the string, which is probably not what you want.  Here's a better way to do this:

      def display
        puts "    1   2   3   4   5   6   7   8   9   10"
        puts "  -----------------------------------------"

        10.times do |i|
          ...
        end
        ...
      end

#### Overuse of instance variables

A red flag that code reviewers will see is using instance variables too often.  I know it's tempting, though!  Sticking an `@` on the beginning of a variable name seems to solve a surprising number of problems, even if you pay for it later.

Regardless, here's some example code (no one actually turned this in - I made it up) which overuses instance variables:

    def place_ship(ship, x, y, orientation=true)
      ship.place(x, y, orientation)

      @overlapping = false
      @ships.each do |placed_ship|
        if placed_ship.overlaps_with?(ship)
          @overlapping = true
          break
        end
      end

      unless @overlapping
        @ships << ship
      end
    end

`@ships` SHOULD be an instance variable (since it's used in other methods).  However, `@overlapping` should not.  It's a local variable which only exists to answer a short-term question, and keeping it around for other methods to access means future woes.

#### Broken Right Off the Bat

When I tried to run the tests for one homework submission, I got this:

    [battleship]$ ruby battleship_test.rb
    /Users/masonfmatthews/Desktop/battleship_2/human_player.rb:20: warning: found = in conditional, should be ==
    /Users/masonfmatthews/Desktop/battleship_2/human_player.rb:32: warning: found = in conditional, should be ==
    /Users/masonfmatthews/.rbenv/versions/2.2.2/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require': /Users/masonfmatthews/Desktop/battleship_2/human_player.rb:49: syntax error, unexpected keyword_end, expecting end-of-input (SyntaxError)

Although it's best to finish assignments, it's fine if you don't make it through.  However, whatever you turn in has to be a complete app with a subset of features.  Remember, it's most important to #shipit in a working/useful state.  One important part of this is that it NEEDS TO RUN.  This error message shows that the code was not in a shippable state.

#### Saving the Result of an `==`

Here's some conditional code:

    if get_user_input == "Across"
      orientation == true
    else
      orientation == false
    end

You could (although it might hurt your head) write it like this:

    orientation = (get_user_input == "Across")

In short, `get_user_input == "Across"` returns `true or `false`, and we just save it in a variable!

#### Arrays of Arrays (and variable names)

Check out this code:

    def place_ship(new_ship, x, y, horz)
      new_ship.place(x, y, horz)
      unless @ships.any? {|s| s.overlaps_with?(new_ship)}
        @board << new_ship.holes
        @ships << new_ship
      end
    end

`@board` ends up being an array of arrays of Hole objects.  First off, this would better be named `@holes`.  Second of all, an array of arrays of objects gets sort of hairy later.  If you want to combine all the Hole objects in one flat array, you can use `+=` instead of `<<`, like this.

    def place_ship(new_ship, x, y, horz)
      new_ship.place(x, y, horz)
      unless @ships.any? {|s| s.overlaps_with?(new_ship)}
        @holes += new_ship.holes
        @ships << new_ship
      end
    end

Finally, the fact that you're keeping track of all your ships' holes in a big array is a red flag.  If you do Object-Oriented Programming right, you don't want to be copying things like this.  Your code will be best if you continually ask your ships questions rather than try to do their jobs for them.


#### Nothing After a Return will Run

In this code:

    if check_ship.covers?(i.spot[0],i.spot[1]) == true
      return true
      exit loop
    end

The third line will never ever run, regardless of what your inputs are.  If a line immediately follows a `return` like this, it is unused code.

This is good news in this case, because I have no idea what `exit loop` would do if it tried to run!


#### Trust Your Objects

Here's another example of some code which is probably doing too much work on its own and not relying on its related objects enough:

    attr_reader :hits, :misses, :grid, :ships, :shots

    def initialize
      @grid = Grid.new
      @ships = []
      @shots = []
      @hits = []
      @misses = []
    end

This is on the Player class.  Without looking at the rest of the code, I'm guessing that some of these are extraneous.  The Grid contains ships, so you probably don't need `@ships`.  `@shots` is probably an array which joins `@hits` and `@misses`, so one of the three can probably go.  This is easier said than done, of course, as there are many other code changes you'll need to make.  This is just a big picture observation.

#### Don't Forget the READMEs

What else can I say about this one?
