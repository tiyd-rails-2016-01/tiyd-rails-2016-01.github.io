---
layout: default
---

## Legacy Associations and Validations Feedback

#### Asserting Counts vs Asserting Saves

So, here is a perfectly useful test:

    def test_unique_emails
      User.create(first_name: "Owen", last_name:"Ham", email:"owen@email.com")
      User.create(first_name: "Jon", last_name:"Ham", email:"owen@email.com")
      assert_equal 1, User.count
    end

Another approach to the same thing is to instead ask if the user you just created can be saved:

    def test_unique_emails
      User.create!(first_name: "Owen", last_name:"Ham", email:"owen@email.com")

      duplicate = User.new(first_name: "Jon", last_name:"Ham", email:"owen@email.com")
      refute duplicate.save
    end

#### `create` vs `create!`

The following test failed in an interesting way.  The number before and after were the same, but there were no exceptions along the way.

    def test_destroy_assignments_in_course
      english = Course.create(name: "English")
      reading = Assignment.create(name: "Reading", course: english)
      assert_equal english, reading.course

      before = Assignment.count
      english.destroy
      after = Assignment.count

      assert before > after
    end

The problem was that the `english` course NEVER SAVED.  `create` (without the `!`) has a bad habit of failing silently, so while it did return something, it just never made it into the database.  Thus, `english.destroy` did nothing.

When I'm creating things that I assume will work (that is, when I'm setting up some objects but intend to test something ELSE), I always use `create!` rather than `create`.  This will raise an exception, so I'll know immediately that the test isn't set up the way I want it to be.


#### Indentation

Check out this test:

    def test_school_has_many_terms
      myschool = School.create(name: "The Iron Yard")
      fall = Term.create(school_id: myschool.id, name: "Fall", starts_on: 2015-05-04,
      ends_on: 2015-07-24)
      spring = Term.create(school_id: myschool.id, name: "spring", starts_on: 2015-05-04,
      ends_on: 2015-07-24)

      assert_equal 2, myschool.terms.count
    end

(I already commented on dates needing `""` around them, so let's put that aside.)

When you have a line of code which you break to put it on multiple lines, it's best to indent the continuation of the line by two tabs (four spaces) like this:

    def test_school_has_many_terms
      myschool = School.create(name: "The Iron Yard")
      fall = Term.create(school_id: myschool.id, name: "Fall", starts_on: 2015-05-04,
          ends_on: 2015-07-24)
      spring = Term.create(school_id: myschool.id, name: "spring", starts_on: 2015-05-04,
          ends_on: 2015-07-24)

      assert_equal 2, myschool.terms.count
    end

#### Not Testing for Failure

This test is not ideal:

    def test_readings_must_order_number_lesson_id_and_url
      hyperion = Reading.create!(order_number: 2, lesson_id: 1, url: "http://hyperion.com")
      assert hyperion
    end

First off, it's obvious that this team missed the second of the four steps:

1. Write a test
2. Make sure it fails
3. Write code to make it pass
4. Refactor as needed

The test would still have succeeded even if no validation was written on the Reading class.  It asserts that a Reading can be created, which is nice.  However, we need to also test that it WON'T be saved if the validation isn't satisfied.  Like this:

    def test_readings_must_order_number_lesson_id_and_url
      hyperion = Reading.create!(order_number: 2, lesson_id: 1, url: "http://hyperion.com")
      assert hyperion

      missing_order_number = Reading.new(lesson_id: 1, url: "http://hyperion.com")
      refute missing_order_number.save

      missing_lesson_id = Reading.new(order_number: 1, url: "http://hyperion.com")
      refute missing_lesson_id.save

      missing_url = Reading.new(lesson_id: 1, order_number: 1)
      refute missing_url.save
    end


#### Get Rid of Truth (And No Need for False)

As you know, the tests I gave you started with `def test_truth`.  Someone decided to take it farther:

    def test_truth
      assert true
    end

    def test_false
      refute false
    end

These tests are fine, but they're usually transient.  We put one of these in the test suite at the beginning as placeholders to make sure that the tests run, but we delete them as soon as we write our first real test.


#### No Need for Assign Methods

Here's some code which works well.

    def test_term_course_association
      fall_term = Term.create(name: "Fall", starts_on: "06/05/15", ends_on: "12/01/15", school_id: 1)
      aero = Course.new(name: "Intro to Aero", course_code: "ABC123")

      fall_term.add_course(aero)

      assert_equal fall_term.id, Course.last.term_id
    end

Now, however, we're in the world of ActiveRecord, so we no longer need to write methods like `.add_course`.  Use this method instead:

    def test_term_course_association
      fall_term = Term.create(name: "Fall", starts_on: "06/05/15", ends_on: "12/01/15", school_id: 1)
      aero = Course.new(name: "Intro to Aero", course_code: "ABC123")

      fall_term.courses << aero

      assert_equal fall_term.id, Course.last.term_id
    end

Or, if you want to tackle it from the other direction:

    def test_term_course_association
      fall_term = Term.create(name: "Fall", starts_on: "06/05/15", ends_on: "12/01/15", school_id: 1)
      aero = Course.new(name: "Intro to Aero", course_code: "ABC123")

      aero.term = fall_term
      aero.save!

      assert_equal fall_term.id, Course.last.term_id
    end

I know it's REALLY WEIRD that you have to save in the second case but not the first case.  A sad truth about Rails is that shovelling automatically saves and setting a belongs_to doesn't.  Think about it as just changing a foreign key (which, of course, you'd have to save after).

#### Testing Associations Rather than Foreign Keys

Let's take that previous example a bit farther (further?).  The `assert` line is just checking to see if `id`s match, not checking to see if the association works.  This is a better test:

    def test_term_course_association
      fall_term = Term.create(name: "Fall", starts_on: "06/05/15", ends_on: "12/01/15", school_id: 1)
      aero = Course.new(name: "Intro to Aero", course_code: "ABC123")

      fall_term.courses << aero

      assert_equal fall_term, Course.last.term
    end

It actually tests that the objects can be retrieved, which is more complicated than detecting whether the foreign key numbers match.
