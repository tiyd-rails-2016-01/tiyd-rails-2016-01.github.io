---
layout: default
---

## Wallet Feedback

#### Separating data from presentation

In our code, it's best to keep our data and logic in our models, and to keep that separate from the presentation of that data (which should happen in the views).  Take a look at these two tests:

    test "negative balance" do
      Mony.create!(amount: -800.0, other_party: "Paycheck", date_of_transaction: 2015-05-30)
      assert_equal "You have a negative account balance.  Eat ramen for a while.",
          Mony.negative_balance
    end

    test "spent" do
      assert_equal "$50.0", Mony.spent
    end

The first test has a class method on `Mony` (let's pause and acknowledge how awesome this name is) which returns a string which is a message to the user.  It would best for the model to have a `Mony.negative?` method which returns true or false, and which then gets called by the view.  We want the message to be in the HTML view.  After all, if we are creating an API, do we really want strings like that?

The same thing goes for the second test.  Let `Money.spent` return a number, and then let the view give it a dollar sign and make it a string.

#### Putting extra actions in a RESTful controller

This `routes.rb` file adds a `dashboard` action to the `monies` controller.  This is a fine way to go about it:

    resources :monies
    root 'monies#dashboard'

Having EXTRA actions does not prevent a controller from being RESTful.  You might say that you've violated rest if you REMOVE actions that are dictated by REST.

An alternative (which we'll talk about later) is this:

    resources :monies do
      collection do
        get :dashboard
      end
    end

More later.

#### Finding transactions in the current month

Almost everyone wrote a method like this to find all the transactions in the current month:

    def self.current_month
      self.all.select {|e| e.created_at.month == Time.now.month}
    end

This is a REALLY good thing to talk about.  The tests pass, but there's a bug.  And it's a bug that you won't detect until ONE WHOLE YEAR has passed.  The problem is that this method returns all transactions from ANY month of June, not just June of this year.  This would have been detected if test data (in fixtures) had spanned more than one year, but it's easy to miss if you just make a bunch of transactions for this year.  Of course, you only know to do that if you happen to think of it, which is a non-trivial task.

Here's a better way to accomplish the same thing (and it uses some cool Rails methods):

    def self.current_month
      start = Time.now.beginning_of_month
      stop = Time.now.end_of_month
      self.all.select {|e| e.created_at >= start && e.created_at <= stop}
    end


#### Rails gives us a `.sum` method on `Array`

Check this out:

    def self.current_debits
      total = 0
      self.current_month.each {|e| total += e.debits.to_f}
      total
    end

As you may know, we could convert this to a `.reduce`.  Of course, `.reduce` is the hardest of all the Enumerable methods, as it passes two parameters to its block, yada yada yada.  Rails, however, gives us the sum method!

    def self.current_debits
      self.current_month.sum {|e| e.debits}
    end

W00t!

#### Much ado about nothing: testing edition

Here is a test with an awesome name:

    test "get date to work please :-)" do
      petsmart = Transaction.create(name: "PetSmart", negotiation: -200)
      starbucks = Transaction.create(name: "Starbucks", negotiation: -100)
      paycheck = Transaction.create(name: "Job", negotiation: 50)
      assert_equal Time.now.month, petsmart.created_at.month
    end

Name aside, if you look at it closely, you'll realize a few things.  First, only one of these Transactions is ever used.  Let's clear those out:

    test "get date to work please :-)" do
      petsmart = Transaction.create(name: "PetSmart", negotiation: -200)
      assert_equal Time.now.month, petsmart.created_at.month
    end

But, if you look at the `create` line, you'll realize that Rails is setting the `created_at` value to be `Time.now` on its own.  Which means that the `assert_equal` is just testing that the month hasn't changed in the time between execution of the first line and execution of the second line. Not too helpful overall.

(Honestly, though, I have to admit that I'd be utterly confused if I happened to run this right at midnight on the last night of the month.  "Wait... how is THIS test failing?!?!?!")
