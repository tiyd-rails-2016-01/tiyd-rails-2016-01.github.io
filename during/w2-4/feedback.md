---
layout: default
---

## Employee Reviews Feedback

#### Placeholder Code

Here's a (rather hilarious) method that I ran across:

    def god_help_me (do_something_helpful)
    end

While the humor is appreciated, it is important to clean code like this up before turning it in.  The method was empty and probably just a placeholder for later work.

A more common option is to write a `#TODO` comment.  That makes it easy to search for later.

#### Yielding to Blocks... Then ignoring the result

Here's some code for Part 2 of the homework:

    def department_wide_raise(amount)
      good_employees = @department_staff.select{|employee| yield(employee)
          employee.verdict != "Good" && employee.salary > 2000}
      good_employees.each {|employee| employee.salary += amount.to_f/good_employees.count}
    end

The last time is spot on.  But look at what's happening in the `select` block.  First off, if we have more than one line, it's best to use `do..end` instead of `{...}`.  Let's convert it:

    def department_wide_raise(amount)
      good_employees = @department_staff.select do |employee|
        yield(employee)
        employee.verdict != "Good" && employee.salary > 2000
      end
      good_employees.each {|employee| employee.salary += amount.to_f/good_employees.count}
    end

Now we're talking.  Note that `select` is going to return an array of items from `@department_staff` for which the last line of the block's code returns true.  This means that the result of the yield gets TOTALLY ignored (since it's not the last line in the block).  This code will work appropriately if you remove the `employee.verdict` line.

#### Quality Asserts

Check out this test:

    def test_get_total_salary_for_department
      don = Employee.new("Don", "don@don.com", 1231231234, 10000)
      tom = Employee.new("Tom", "tom@don.com", 1231231234, 10000)
      joan = Employee.new("Joan", "joan@don.com", 1231235555, 10000)
      department = Department.new(name: "Advertising")
      department.assign(don, tom, joan)
      department.total_salary
    end

This is a pitfall when writing tests; it certainly DOES something, but it doesn't have any asserts in it.  This test will pass all the time.  This could be caught by making sure that you always write FAILING tests first.

Here's another one which looks better, but which has the same fault:

    def test_13_add_raise_to_employee
      steve = Employee.new(name: "Steve", email: "hello@gmail.com", phone: 404803666, salary: 1000)
      assert steve.give_raise(1000)
    end

What this really tests is whether the `give_raise` function returns something truthy.  It makes no assertions that the raise was for the appropriate amount, or even that the salary changed at all.  This test needs the following additional assertion to be a quality test:

    assert_equal 2000, steve.salary


#### Phantom Attributes

The following code will run successfully:

    class Department
      attr_reader :employees, :name, :reviews, :salary
      def initialize(name:)
        @name = name
        @employees = []
        @salary = salary
      end
      ...
    end

But let's look at the lines in `initialize` one at a time.  The first line makes sense.  `name` is a parameter, so we can save it in `@name`.  The second line also makes sense; we need an empty array in which we can accumulate employees later.  The third line, though... where is `salary` coming from?

It turns out that that line calls the `salary` METHOD, which has been set up by the attr_reader.  It's reading a previously-nonexistant instance variable called `@salary`, and all previously non-existant instance variables evaluate to `nil`.  So it's basically setting a variable equal to itself... and that value is `nil`.  This line runs (even though it looks like it shouldn't), but it does nothing and can be removed.
