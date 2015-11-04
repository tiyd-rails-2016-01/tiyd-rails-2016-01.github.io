---
layout: default
---

## Gradebook Feedback

#### Root path no-no

Take a look at these routes:

    root 'sessions#login'
    post 'sessions/login'
    get 'sessions/logout'

The first one's the only one of note here: you never want to set your root to be your login page.  If you do, people who have already logged in might type `www.myapp.com` into the address bar, then rage because they have to log in again.  Set your root to be the most important page INSIDE your app, then let it redirect back to login for folks who haven't signed in yet.


#### Get an instance variable while you're at it

Here's a method to check whether the user has logged in:

    def logged_in?
      if Teacher.find_by_id(session[:teacher_id])
      else
        redirect_to sessions_login_path, notice: "Please login"
      end
    end

First, of course, it's a little strange to have an `if` without code, so let's flip it around:

    def logged_in?
      unless Teacher.find_by_id(session[:teacher_id])
        redirect_to sessions_login_path, notice: "Please login"
      end
    end

But since we're doing the work to find a teacher, let's save it in an instance variable:

    def logged_in?
      @teacher = Teacher.find_by_id(session[:teacher_id])
      unless @teacher
        redirect_to sessions_login_path, notice: "Please login"
      end
    end

Now take a look at the other code in the same controller.  How many of these lines can we remove from this (Hint: lots!):

    before_action logged_in?

    def index
      @parents = Parent.all
      @teacher = Teacher.find_by_id(session[:teacher_id])
    end

    def show
      @teacher = Teacher.find_by_id(session[:teacher_id])
    end

    def new
      @parent = Parent.new
      @teacher = Teacher.find_by_id(session[:teacher_id])
    end

    def edit
      @teacher = Teacher.find_by_id(session[:teacher_id])
    end

    ...


#### Simple way to get all of a teacher's parents

These two methods are all different ways to get a set of parents for the logged in teacher:

    def index
      teacher = Teacher.find_by_id(session[:user_id])
      @parents = Parent.where(teacher_id: teacher.id).all
    end

    def index
      teacher = Teacher.find_by_id(session[:user_id])
      @parents = Parent.all.select{|parent| parent if parent.teacher_id == teacher.id}
    end

They both work!  The first one will take less memory, as `.where` does the looping work in the database and `.all.select` loads them all in memory in Rails, then picks a subset.  However, the best way is also the simplest way:

    def index
      @parents = Teacher.find_by_id(session[:user_id]).parents
    end

Since we have a `has_many` relationship set up, might as well use it, right?  Of course, if we take the prior feedback into account as well, we just do:

    def index
      @parents = @teacher.parents
    end
