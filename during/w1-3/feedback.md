---
layout: default
---

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
