---
layout: default
---

## Wk 7 - Wednesday - AJAX

**Challenge:** [Discuss Git Messes](https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/discuss_git_messes.md)

* Git
  * `git reset`
  * `git fetch`
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
* How to debug AJAX
* Homework Tips:
  * Google for something which runs JavaScript every X seconds.
  * To make the AJAX call from something that isn't a remote button or a remote form, try one of these:
    * `$.ajax()`
    * `$.getScript()`

#### Lecture Notes

* [Class Video]()
* [Vegetable Garden Code from Class](https://github.com/tiyd-rails-2016-01/vegetable_garden)
* [Undoing Git Messes](git_messes)

#### Useful Links

* [JQuery UI](http://jqueryui.com/)
* [Ruby Toolbox](https://www.ruby-toolbox.com)

#### Evening Reading

* Eloquent JavaScript Reading: Chapters 17 and 18 of [Eloquent JavaScript](http://eloquentjavascript.net/)
* Listening: [Ruby Rogues - The Science of Software Development](http://devchat.tv/ruby-rogues/184-rr-what-we-actually-know-about-software-development-and-why-we-believe-it-s-true-with-greg-wilson-and-andreas-stefik)

#### Assignment

* Assignment: [Auction Site with AJAX](https://github.com/tiyd-rails-2016-01/auction_ajax)
<!-- * Feedback: [Auction Site Feedback](feedback) -->
