---
layout: default
---

## Add JQuery Feedback

#### Unnecessary escaping

This code works:

    <div id="due-date-modal<%= "#{assignment.id}" %>">

...but putting it in a string is unnecessary.  Just do this:

    <div id="due-date-modal<%= assignment.id %>">

#### Unnecessary variable

There was a method last night with the sole purpose of hiding a div.  Here's what it contained:

    var lastLink = $('#last-button').closest(".association.container").hide();

Since everything on the right side of the `=` handled the hiding as was required, there was no need to save the result in a variable.  We never ended up doing anything with `lastLink`.  Here's a better way to write this:

    $('#last-button').closest(".association.container").hide();
