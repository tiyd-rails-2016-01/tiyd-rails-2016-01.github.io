---
layout: default
---

## Wk 7 - Tuesday - jQuery

**Challenge:** [Session](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_session.md)

* Human Learning
  * [Autonomy/Mastery/Purpose](https://www.youtube.com/watch?v=u6XAPnuFjJc)
  * [12 Questions](12questions.pdf)
* More JavaScript
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

* [Class Video](https://youtu.be/zqp50dcOj6c)
* [Whiteboard](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/049/original/git_messes.jpg?1444853318)

#### Useful Links


#### Evening Reading

* Preview Reading: [The creator of Rails speaks on how Rails does AJAX](https://signalvnoise.com/posts/3697-server-generated-javascript-responses)
* Optional (excellent) Reading: Chapters 13 and 14 of [Eloquent JavaScript](http://eloquentjavascript.net/)

#### Assignment

* Assignment: [Add jQuery](https://github.com/tiyd-rails-2016-01/add_jquery)
* Starting Point: [Where we left off in class](https://github.com/tiyd-rails-2016-01/coursyl_with_some_jquery)
<!-- * Feedback: [Add jQuery Feedback](feedback) -->
