---
layout: default
---

## User Input Statistics Feedback

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
