---
layout: default
---

## Wk 9 - Wednesday - d3.js

[Code Repository for the Day](https://github.com/tiyd-rails-2016-01/d3_lesson)

**Exercise 1:** Graph `deaths.csv` on an HTML page.  Use CSS as you see fit, but don't use any graphing libraries which you may have learned.

* Intro to d3.js
  * Used for many different types of visualization.  Show my three examples.
  * [Layouts: Sunburst](http://bl.ocks.org/kerryrodden/7090426)
  * [Layouts: Calendar](http://bl.ocks.org/mbostock/4063318)
  * [Physics: Collision Detection](http://bl.ocks.org/mbostock/3231298)
  * [Physics: Force Directed Graph](http://bl.ocks.org/mbostock/4062045)
  * [Visualizations: Paths to the White House](http://www.nytimes.com/interactive/2012/11/02/us/politics/paths-to-the-white-house.html?_r=0)
  * [Visualizations: Strikeouts](http://www.nytimes.com/interactive/2013/03/29/sports/baseball/Strikeouts-Are-Still-Soaring.html?ref=baseball)
* (Lecture starts from the `part1` branch)
* SVG
  * `circle` (cx, cy, r)
  * `line` (x1, y1, x2, y2)
  * `rect` (x, y, width, height)
  * `g` (and `transform="translate(100,100) rotate(0)"`)
* Selectors
  * `d3.select()`
  * `d3.selectAll()`
  * `d3.select(element)`
  * `my_selection.select()`
* Modifying DOM Elements
  * `my_selection.append("circle")`
  * `my_selection.attr("cx", 200)`, etc
  * `my_selection.style("fill", "red")`
  * `my_selection.remove()`
* Linear Scales
  * `d3.scale.linear()`
  * `my_scale.domain([lowest_input, highest_input])`
  * `my_scale.range([output_for_lowest, output_for_highest])`
* Axes
  * `d3.svg.axis().scale(my_scale).orient("left").ticks(count)` (or `"top"`, `"bottom"`, or `"right"`)
  * `selection.call(my_axis)`
  * `.tickFormat(d3.format("d"))`

**Exercise 2:** Start from the `part2` branch.  Graph points on an x/y plane.  Open `old_discoveries.csv` and use its "year" column as X and its "important_discoveries" column as Y.

* Complete
* Reading from Files
  * `d3.json/csv/xml/html/tsv/text`
  * `d3.json("file.json", function(data) {...})`
* Serving up a folder via a web server:
  * `ruby -run -ehttpd . -p8000`
  * `python -m SimpleHTTPServer 8000` (Python 2) or `python -m http.server 8000` (Python 3)
  * `npm install -g node-static` then `static -p 8000`
* Data Joins
  * `selection.data(data)`
  * `data_join.attr("r", function(data_point) {})`
  * `data_join.attr("r", function(data_point, index) {})`
* Behavior
  * `data_join.on("click", function(data_point, index) {…})`
* Enter/Exit
  * `data_join.enter()`
  * `data_join.exit()`

**Exercise 3:** Add a dropdown to the page which will let you change the Y value of each year to a different column of `data.csv`.  Start from the `part3` branch.

* Color Scales
  * `my_scale.interpolate(d3.interpolateHcl)`
* Transitions
  * `selection.transition()`
  * `my_transition.duration(zoomTime)`

#### Lecture Notes

* [Class Video]()

#### Useful Links


#### Evening Reading

* Preview Reading: [Decompose Fat Models](http://blog.codeclimate.com/blog/2012/10/17/7-ways-to-decompose-fat-activerecord-models/)
* Preview Reading: [Build an app in Rails vs. Sinatra](https://www.airpair.com/ruby-on-rails/posts/rails-vs-sinatra?utm_source=rubyweekly&utm_medium=email)
* Listening: [Ruby Rogues - AWS](https://devchat.tv/ruby-rogues/218-rr-aws-deployments-with-alex-wood-and-trevor-rowe)

#### Assignment

* Assignment: Begin [Ruby Koans](http://rubykoans.com/).  This will span two nights.
