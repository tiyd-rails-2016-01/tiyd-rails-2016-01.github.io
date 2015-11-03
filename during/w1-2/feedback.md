---
layout: default
---

## Number Guessing Game Feedback

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
