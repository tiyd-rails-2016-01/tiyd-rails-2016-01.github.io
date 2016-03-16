---
layout: default
---

## Wk 7 - Wednesday - jQuery and Unobtrusive JavaScript

<!-- **Challenge:** [Helpers](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_helpers.md) -->

* Human Learning
  * [Autonomy/Mastery/Purpose](https://www.youtube.com/watch?v=u6XAPnuFjJc)
  * [12 Questions](12questions.pdf)
  * Flipside: [What DHH looks for when hiring](https://medium.com/@christophelimpalair/why-the-founder-of-rails-automatically-rejects-80-of-software-engineer-applicants-4e2a4d255f58#.xl04lhyaw)
* More JavaScript
  * How to debug JavaScript
  * Load order
  * `javascript:void(0)`
  * `addEventListener()`
  * `this`
  * `event.target` or passing `this` as a parameter to an `onclick` function.
* Declarative Style of Programming
* JQuery
  * `$("selector")`
  * `$(event.target)`
  * Getters and setters are not different methods like Ruby.  You add one parameter to a getter method and it becomes a setter method.
  * `.attr()` - one or two params
  * `.css()` - one or two params
  * `.prop()` - for disabled and checked
  * `.val()` - zero or one param
  * `.closest()` - closest ancestor
  * `.filter()` - further refine a selection
  * `.find()` - any descendants that match
  * `.submit()` - submit a form
  * `.children().last().clone()`
  * `.append(copied_thing)`
  * `$(function())` - this removes the need to have `<style>` tags in your HTML.
  * `$(...).on("click", function(){...}` - this removes the need for `onclick` attributes in our HTML tags.
* Unobtrusive Javascript

#### Lecture Notes

<!--
* [Class Video]()
* [Whiteboard](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/049/original/git_messes.jpg?1444853318)
-->

#### Useful Links

* [Inventing on Principle](https://www.youtube.com/watch?v=PUv66718DII)
* [Hiring Apprentices](https://push.cx/2015/hiring-apprentices)
* [Coding is Not the New Literacy](http://www.chris-granger.com/2015/01/26/coding-is-not-the-new-literacy/)
* [A Lever for the Mind](https://www.youtube.com/watch?v=tJkoHFjoMuk)

#### Evening Reading

* Preview Reading: [The creator of Rails speaks on how Rails does AJAX](https://signalvnoise.com/posts/3697-server-generated-javascript-responses)
* Preview Reading: [Pro Git Ch. 3.5](http://git-scm.com/book/en/v2/Git-Branching-Remote-Branches)
* Preview Reading: [Pro Git Ch. 3.6](http://git-scm.com/book/en/v2/Git-Branching-Rebasing)
* Eloquent JS Reading: Chapters 13 and 14 of [Eloquent JavaScript](http://eloquentjavascript.net/)
* Listening: [Ruby Rogues - Understanding Computation](https://devchat.tv/ruby-rogues/120-rr-book-club-understanding-computation-with-tom-stuart)

#### Assignment

* Assignment: [Add jQuery](https://github.com/tiyd-rails-2016-01/add_jquery)
* Starting Point: [Where we left off in class](https://github.com/tiyd-rails-2016-01/coursyl_with_some_jquery)
<!-- * Feedback: [Add jQuery Feedback](feedback) -->
