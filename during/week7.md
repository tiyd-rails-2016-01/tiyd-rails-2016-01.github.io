---
layout: default
---

## Week 7 - Overview

Students should be comfortable with the following at the end of this week:

* JavaScript
* jQuery
* Unobtrusive JavaScript
* AJAX


## Important Links

* [Tabula Railsa](https://github.com/tiyd-rails-2015-08/tabula_railsa)
* [Challenge Submission Form](http://goo.gl/forms/JhvP6hX7VN)
* [Homework Submission Form](http://goo.gl/forms/2Gki2xhdO6)


## Monday - JavaScript

**Challenge:** [Helpers](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_helpers.md)

* Starting Point: [Tabula Railsa](https://github.com/tiyd-rails-2015-08/tabula_railsa)

* Agile
  * ON BOARD: Style matters early (sadly)
* Random Topics
  * `config.action_controller.action_on_unpermitted_parameters = :raise`
* Javascript in `node`
  * Surprisingly similar to ruby
  * `var` keyword
  * hashes vs "objects"
  * numbers are all floats
  * `do..end` vs `{}`
  * `else if`
  * `==` vs `===`
    * `1 == "1"`
    * `[1, 2, 3] === [1, 2, 3]`... sigh
  * Weird returns (`var` lines, or `a++`)
  * capitalization in variable names
* Functions
  * methods vs functions
  * implicit vs explicit return
  * First, define them as we would in Ruby: `function sayHi() { alert("Hi"); }`
  * Can be stored in variables
  * `[1, 2, 3].forEach(function (number) { console.log(number * number); });`

    <!-- function greet(greeting) {
      return function() {
        return greeting + " world!";
      };
    }
    var hello = greet("Hello");
    var goodbye = greet("Goodbye");
    hello(); // Hello world!
    goodbye(); // Goodbye world! -->

* The DOM
* JavaScript in Chrome console - load up google.com search results
  * `document.getElementById()`
  * `document.getElementsByClassName()`
  * `.value` or `.value = "default"`
  * `.style.color` or `.style.color = "blue"`
* JavaScript in a Rails app: [javascript_playground repository](https://github.com/tiyd-rails-2015-08/javascript_playground_starting_point)
  * `application.js`
  * `alert()` on every page
  * `console.log()` on every page
  * Work through the exercises on the playground root page.
  * `onclick=` attributes in HTML tags
  * Functions in `application.js`
  * `.lastElementChild` - it's sometimes tough to know what's a function and what's just a value!
  * `.cloneNode(true)`
  * `.appendChild(copy)`
  * `<script>` tags to run the JavaScript when the page loads.

#### Lecture Notes/Links

* [Class Video](https://youtu.be/ByI5Wtl0YNw)
* [Mini-lecture Video](https://youtu.be/XdBCf74xzxQ)
* [Example playground code](https://github.com/tiyd-rails-2015-08/javascript_playground)

#### Evening Reading

* Preview Reading: [How jQuery Works](http://learn.jquery.com/about-jquery/how-jquery-works/)
* Optional (excellent) Reading: Chapters 5 and 12 of [Eloquent JavaScript](http://eloquentjavascript.net/)

#### Assignment

* [Add Javascript](https://github.com/tiyd-rails-2015-08/add_javascript)
  * [Starting Point](https://github.com/tiyd-rails-2015-08/coursyl)


## Tuesday - jQuery

**Challenge:** [Session](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/rails_session.md)

* Human Learning
  * [Autonomy/Mastery/Purpose](https://www.youtube.com/watch?v=u6XAPnuFjJc)
  * [12 Questions](w7-3/12questions.pdf)
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

#### Lecture Notes/Links

* [Class Video](https://youtu.be/zqp50dcOj6c)
* [Whiteboard](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/049/original/git_messes.jpg?1444853318)

#### Evening Reading

* Preview Reading: [The creator of Rails speaks on how Rails does AJAX](https://signalvnoise.com/posts/3697-server-generated-javascript-responses)
* Optional (excellent) Reading: Chapters 13 and 14 of [Eloquent JavaScript](http://eloquentjavascript.net/)

#### Assignment

* [Add jQuery](https://github.com/tiyd-rails-2015-08/add_jquery)
  * [Where we left off in class](https://github.com/tiyd-rails-2015-08/coursyl_with_some_jquery)

## Wednesday - AJAX

**Challenge:** [Discuss Git Messes](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/discuss_git_messes.md)


* Git
  * `git reset`
  * `git rebase`
  * `git filter-branch`
* Random topics
  * JQuery UI
  * JQuery Plugins
  * The downsides of linking to external styles/javascript
  * Installing gems vs. copying assets
* Using `data-` attributes
* AJAX
  * The way to replace sections of a page without reloading the whole page!
  * `remote: true` on links and forms
  * Rendering `.js.erb` files as responses to AJAX calls
  * `render @quote` (if `@quote` contains one Quote instance) uses `_quote.html.erb`
  * `render @quotes` (if `@quotes` contains an array of Quote instances) uses `_quote.html.erb` many times
* Homework Tips:
  * Google for something which runs JavaScript every X seconds.
  * To make the AJAX call from something that isn't a remote button or a remote form, try one of these:
    * `$.ajax()`
    * `$.getScript()`

#### Lecture Notes/Links

* [Class Video](https://youtu.be/1lWjd2YPkB8)
* [Vegetable Garden Code from Class](https://github.com/tiyd-rails-2015-08/vegetable_garden)
* [Undoing Git Messes](w7-4/git_messes)
* [JQuery UI](http://jqueryui.com/)
* [Ruby Toolbox](https://www.ruby-toolbox.com)

#### Evening Reading

* Required Reading: None
* Optional (excellent) Reading: Chapters 17 and 18 of [Eloquent JavaScript](http://eloquentjavascript.net/)

#### Assignment

[Auction Site with AJAX](https://github.com/tiyd-rails-2015-08/auction_ajax)


## Thursday

* [Homework Review Video](https://youtu.be/rVBGlbLkG9Y)
* [Class Video](https://youtu.be/KzZj9sKC_-4)
* [Whiteboard - form_for and form_tag](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/061/original/form_tag_vs_for.jpg?1446060756)
* [Whiteboard - Todo List DB Database Design](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/060/original/todo_list_db_design.jpg?1446060347)
* [Whiteboard - JQuery Functions](http://tiyd-rails.s3.amazonaws.com/pictures/uploaded_files/000/000/063/original/jquery_functions.jpg?1446061467)

## Weekend Assignment - IN PAIRS

[Todo List](https://github.com/tiyd-rails-2015-08/todo_app)
