---
layout: default
---

# Week 2 Homework Feedback




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
