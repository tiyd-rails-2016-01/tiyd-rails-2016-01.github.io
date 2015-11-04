---
layout: default
---

## Currency Converter Feedback

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
