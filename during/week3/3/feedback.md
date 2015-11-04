---
layout: default
---

## Employee Reviews w/ DB Feedback

#### Map Can Be Overkill

This code runs:

    def total_salaries
      total_salaries = 0
      employees.map {|e| total_salaries += e.salary}
      total_salaries
    end

But it's a bit of a waste.  Since you're not doing anything with the array that `.map` returns, just use `.each` instead.

#### Delete Commented Code Before Turning In Assignments

You'll have to do this when you're really out on the job, so you might as well get used to it now.  When you have code like this:

    def lowest_paid_employee
      # salaries = self.employees.map {|e| e}
      # #salaries = salaries.sort {|e,f|e <=> f}
      # salaries
      employees.order(:salary).first.name
    end

...just delete the commented code!  If you ever need it, you can get it back out of git if you've been committing often.

#### Extra Database Lines Slow Tests

This test is a good one:

    def test_get_employee_name
      Department.create(name: "Development")
      Employee.create(name: "Dutch Matrix", email: "Commando@example.com", phone_number: "919-877-1276", salary: 90000)

      assert_equal "Dutch Matrix", Employee.last.name
    end

However, the first line seems to have been copied and pasted from a different test, and never removed. Since that department is not used anywhere else in the test, it just makes an extra database call with no benefit.  This type of extra line is worse than, say, an extraneous `2+2`, as it actually slows things down.

#### Method Naming Abbreviations (spoiler alert: not good)

One method submitted for this assignment was `.alphabetize_a`.   I've thought about it for a while, and I'm not sure what the `a` stands for.  Ideally, you want to avoid single letters as part of method or variable names.  Another one I saw recently was `.add_e`.  You get the idea.  It's easier to communicate with other developers using whole words.

#### Using `?` on Non-Predicate Methods

Check out this assertion:

    assert_equal "Development", sales.most_employees?

We expect to be able to ask a `?` method a yes/no question.  This one returns the department with the most employees, which isn't a yes/no question.  The `?` should be dropped from the method name.

(You'll also note that it's suboptimal to ask the Sales department which department has the most employees.  It would be best to ask the class `Department` using a class method.)

#### Relying on Subsequent Database IDs

This code finds the deparment with the most employees:

    department_n = Department.count
    most_so_far = 0
    d_id = 0

    department_n.times do |num|
      employee_count = Employee.where(department_id: num).count
      if most_so_far < employee_count
        most_so_far = employee_count
        d_id = num
      end
    end
    Department.find(d_id)

As we discussed in class, it would be easier to loop over all departments rather than creating a `.times` loop, but let's put that aside for now.

This code makes a bad assumption.  It assumes that NO IDS WERE SKIPPED.  If there are 100 departments, this code checks for departments with ids 1 through 100.  However, if any departments have been deleted over time, there might still be 100 departments whose ids range from 1 to 200.  If the biggest department has an id of 150, this code will never find it.

#### Don't Assume Any Number is Infinite

In this code, someone attempted to make a number which was close to infinity:

    def paid_least
      number = 100000000
      person = nil
      self.employees.each do |emp|
        if number > emp.salary
          number = emp.salary
          person = emp
        end
      end
      return person
    end

The idea is that no one could EVER make more than this...so the lowest paid employee will make less, and the massive number will go away during the first iteration of the loop.

A better approach is to just seed `number` and `person` with the first employee.  Unless there are no employees, of course; in that case, just return nil.

##### Phone Numbers

Check out this employee creation line, and tell me what phone number the employee will have:

    fred = Employee.create(name: "Freddy", email: "freddy@gmail.com", phone_number: 919-434-5612, salary: 55000)

The answer: -5127.  See why?
