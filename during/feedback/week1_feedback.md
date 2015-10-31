---
layout: default
---

# Week 1 Homework Feedback

## User Input Statistics

#### String interpolation

Instead of writing `puts "Total is:" + total.to_s`, you can write `puts "Total is: #{total}"`.  That's called "String Interpolation", and it generally uses less code.

#### Extraneous string interpolation

Similarly, one line of code turned in was: `list = "#{list}" + "#{justnow}"`.  It works, but it's basically putting a string into a string and then taking it back out.  It's simpler to just write `list = list + justnow`, or even `list += justnow`.

#### Naming variables with numbers

It's best to avoid naming variables with numbers like this:

    puts "please enter a number"
    number = gets.chomp
    number_2= number.to_f

Instead, consider naming variables using the type of thing they are, like this:

    puts "please enter a number"
    number_string = gets.chomp
    number = number_string.to_f

#### Checking equality with different types

Check out this `if` statement:

    if input.to_f == 0 && input != 0 && input != ""

We know that `input` is a string, so the clause `input != 0` will ALWAYS be true.  A string will never equal zero.  Having a clause that will always be true inside a string of `&&` is extraneous and can be removed.

#### Extraneous code

Check out this code (I removed some for simplicity's sake):

    if answer == answer.to_i.to_s || answer == answer.to_f.to_s
      ...
    elsif answer == ""
      ...
    else
      puts "Thats not a number idiot-boy!"
      total/count
    end

The line `total/count` is an interesting one.  In this code, it doesn't actually do anything.  It's like having a line of code in your program which just says `2+2`.  The computer does the math, then does nothing with the result.  In this case, the line can be removed.


## Number Guessing Game

#### More Methods are not Bad

The game had to give you three different types of sarcastic comments, so someone wrote a sarcasm method:

    def sarcastic_comments(type)
      if type == "repeat"
        ["You have the memory of a goldfish, apparently", "Hellooooooo. No.", "Having a senior moment?", "Were you not here a minute ago?" ].sample
      elsif type == "out_of_bounds"
        "You need to go see a math teacher before you try this game again."
      else
        ["Pay Attention!", "Well that was a wasted guess.", "Did I stutter?"].sample
      end
    end

Since this method is called from three different places in the code for three different reasons, it would be cleaner to write three different methods like this:

    def repeat_comment
      ["You have the memory of a goldfish, apparently", "Hellooooooo. No.", "Having a senior moment?", "Were you not here a minute ago?" ].sample
    end

    def out_of_bounds_comment
      "You need to go see a math teacher before you try this game again."
    end

    def not_listening_comment
      ["Pay Attention!", "Well that was a wasted guess.", "Did I stutter?"].sample
    end

#### Variable Names

This line of code showed up in the assignment: `guessed_num = []`.  This variable holds an array, but it could be named better for two reasons.  First, since it contains more than one number, it should be pluralized (e.g. `guessed_nums`).  Second, we generally prefer to use entire words for our variable names rather than abbreviations.  The best name would have been `guessed_numbers`, or just `guesses`.

#### Spelling

Sadly, spelling is a big deal in the developer world.  This is especially true in variable and method names, since other developers who try to call a `calculater` method will inevitably spell it correctly and not know why it isn't working.

In addition, spelling matters in comments, READMEs, and any other written communication that we put out.  Even as a developer, you can be judged negatively by interviewers for not having good spelling and grammar.

#### Changing Variable Contents Inside Methods

Check out this code:

    def check_array(guess_array, guess)
      if guess_array.include?(guess)
        print "Steve Perry would appreciate that you don't stop believing, but that's still not correct. "
      else
        guess_array<<guess
      end
    end

    ...
    check_array(guess_array, guess)
    ...

Sadly, `guess_array<<guess` is a problem.  It would be totally fine if `guess_array` was a local variable, but since it's passed in as an PARAMETER, it means that anyone who called this method could have their variable's contents changed out from under them.  This is the bad kind of side effect.

Here's what the code should look like instead.  Note that we make the method RETURN a result that gets used on the outside.

    def new_guess?(guess_array, guess)
      if guess_array.include?(guess)
        print "Steve Perry would appreciate that you don't stop believing, but that's still not correct. "
        return false
      else
        return true
      end
    end

    ...
    guess_array << guess if new_guess?(guess_array, guess)
    ...

#### Options for Commenting

We talked about `#` being the way to comment.  There are other options like this:

    =begin
    another way to get a random number...
    number = (0..100).to_a
    number.shuffle.first
    puts number
    =end

Generally, though, we prefer the `#` approach, as it's easier to toggle this on or off, even if it's for a whole set of lines.

#### If Lines

Although it's possible to put your logical statement on a different line from your `if` like this:

    if
      user_guess == 0
      puts "numbers only"
    end

... it's not recommended.  It will confuse others who read your code, so it's best to keep it all together:

    if user_guess == 0
      puts "numbers only"
    end

#### Capital Letters in Variable Names

If a variable name starts with a capital letter, it's actually not a variable anymore, it's a "Constant".  We'll be talking about these much more on Thursday, but for now, take a look at this code:

    A = []
    def check_number(user_input)
      if A.include?(user_input)
        puts "Did you bump your head?"
      else
        A << user_input
      end
    end
    ...
    check_number(user_input)

This array `A` is set up outside the function, but it still is available inside the function.  That's because the capitalization makes it special.  Since these are supposed to be constant, it breaks the Ruby rules to add anything to `A`.  Instead, the array should be passed in when the method is called, like this:

    def check_number(user_input, array)
      if array.include?(user_input)
        puts "Did you bump your head?"
        false
      else
        true
      end
    end
    ...
    array = []
    ...
    array << user_input if check_number(user_input, array)

#### Remove "debugging code"

As you're developing, it's going to be helpful if you `puts` out some information along the way for testing/debugging purposes.  Here's an example:

    correct_number = (1..100).to_a.sample  # rand(1..100)
    puts correct_number
    all_guesses = Array.new
    #... then more stuff happened

That second line is great when you're working on the homework, but it's important to remove all debugging lines before you turn in an assignment (both here and in the real world).



## Blackjack Advisor

#### Many Possible Values

Someone was working on this project (before turning it in) and had a line like this:

    if card == ("jack" || "j" || "queen" || "q" || "king" || "k")

The idea makes sense in English, but not in code.  It won't work because the `||` operators get evaluated BEFORE the `==`.  In the end, this code is saying `if card == "jack"`.

The "Ruby Way"(TM) to code this is to think about it backwards and say:

    if ["jack", "j", "queen", "q", "king", "k"].include?(card)

There's another way, using Regular Expressions.  Tune in next week.

#### Start Small

Here was a submission for the homework:

    print"Enter your first card..."
    card1 = gets.chomp.to_i

    print "Enter your second card..."
    card2 = gets.chomp.to_i

    print "Enter the dealer's up card..."
    dealer_card = gets.chomp.to_i

    blackjack_master_hash = {"player_hand" => card1 + card2}

    puts "The total of your hand is #{blackjack_master_hash["player_hand"]}"

This was an entire submission, and it's worth noting because I know the person put a lot of thought and planning into the assignment. She/He had good ideas, but the sheer weight of the task led to indecision and lack of progress.  I've said it a bunch in class, but the way to get around this is to START WITH SMALLER SOLUTIONS.

#### Put Definitions Up Top, Executing Code Below

Here's an excerpt from someone's submission:

    hard_call_hash = {2 => {9 => "double or hit", 10 => "double or hit", 11 => "double or hit"},
                      ...
                      11 => {11 => "double or hit"}}

    def hard_hits(hard_call_hash, player_card_sum, dealer_card_sum)
      if hard_call_hash[dealer_card_sum][player_card_sum] == "double or hit"
        puts hard_call_hash[dealer_card_sum][player_card_sum]
      elsif player_card_sum < 8
        puts "hit"
      elsif player_card_sum < 17 && dealer_card_sum > 6
        puts "hit"
      elsif player_card_sum < 12 && dealer_card_sum < 4
        puts "hit"
      else
        puts "stay"
      end
    end


    soft_call_hash = {13 => {4 => "double or hit", 5 => "double or hit", 6 => "double or hit"},
                      ...
                      20 => "0"}

Note that there's code here which executes, then code which definies a method, then more code which executes.

The best practice is to put all code definitions at the top of the file and all executing code at the bottom.  This makes it easier to remember which variables are available in the main executing code.  It's tougher to track down bugs otherwise.

#### Simplifying `if`s

You'll note in the example above that the method has a lot going on.  The `if` statement count be consolidated a bit:

    def hard_hits(hash, player, dealer)
      if hash[dealer_card_sum][player_card_sum] == "double or hit"
        puts "double or hit"
      elsif player < 8 || (player < 17 && dealer > 6) || (player < 12 && dealer < 4)
        puts "hit"
      else
        puts "stay"
      end
    end

It's open for debate whether this is easier to read.  Just wanted to put it out there as an option.

#### Converting Numbers to Strings

Look at the first thing in square brackets here:

    hand["#{a}"]["hits"]

That works as a way to convert a number to a string, but it's better to do this:

    hand[a.to_s]["hits"]

#### Returning More than One Thing

Someone discovered that you can return more than one thing from a method:

    def get_user_cards
      user_cards = []
      total = 0
      first_card = gets.chomp
      second_card = gets.chomp

      total = first_card + second_card
      user_cards = [first_card, second_card]

      return user_cards, total
    end

    user_cards, total = get_user_cards

This is pretty cool, but sadly, it's considered a no-no.  As we move into objects, you'll come to realize that the best thing to return here is one object which contains all the information that will be needed later.  You may have to create a class.

#### Searching Through a Hash?  Not Necessary!

This code pulls something out of a hash:

    if includes_ace == true
      hash_answers[:hard].each do |key, value|
        if key == total
          value.each do |key, value|
            if key == dealer_card
              puts "#{value.upcase}!"
            end
          end
        end
      end
    end

Here's the way-better way to accomplish the same thing:

    if includes_ace == true
      puts hash_answers[:hard][total][dealer_card]
    end

Look how WAY easier that is.  This is what hashes get us.

But wait, there's more.  You also don't need the `== true`.  `if` accepts anything and evaluates whether it's truthy.  You don't have to check that it's truthy yourself:

  if includes_ace
    puts hash_answers[:hard][total][dealer_card]
  end

#### Repository Names

I'm noticing that some folks are naming their GitHub REPOSITORIES things like `blackjack_advisor.rb`.  That's fine for a file name, but your repository should be named something that looks like a folder name (e.g. `blackjack_advisor`).

#### Single-purpose Methods

Here's a method from the homework:

    def player_total
      print "Please enter your first card: "
      first_card = gets.chomp.capitalize
      first_card = card_values[first_card]

      print "Please enter you second card: "
      second_card = gets.chomp.capitalize
      second_card = card_values[second_card]


      player_card_total = first_card + second_card

      #treats ace value as 1 if 11 will make the user go over 21.
      if player_card_total > 21
        player_card_total -= 10
      end
      return player_card_total
    end

This method does ALL of the following things:

* Asks for a first card
* Asks for a second card
* Converts each card to a number
* Adds up the total

Given this, you can tell that the method name is a bit off.  The best approach to writing methods is to make each method to do ONE thing.  Try to express the purpose of each method in just one English sentence.

#### `puts` Statements for Debugging

I got the following result when I ran one of the programs:

    [masonfmatthews Desktop]$ ruby blackjack.rb
    whats your first card?
    2
    and your second?
    2
    whats the dealers card?
    2
    {"users_hand"=>{"first_card"=>2, "second_card"=>2}, "dealers_card"=>2}
    Split
    [masonfmatthews Desktop]$

You notice that I got an extra line: `{"users_hand"=>{"first_card"=>2, "second_card"=>2}, "dealers_card"=>2}`.  That's because someone left a `puts` statement in that they had written for debugging purposes.  This leads to an important lesson:

**Always remove all debugging statements before you commit the final version of your code.**

This applies in this class, but especially applies out in the real world.
