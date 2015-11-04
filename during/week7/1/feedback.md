---
layout: default
---

## Add JavaScript Feedback

#### Set timeouts

As you know from swearing at it last night, if you disable a button in an `onclick` action... that button never has a chance to submit that form.  Like this:

    function disabledButton(){
      var button = document.getElementById("submit-button");
      button.disabled = 'true';;
    }

You've succeeded in disabling the button, but... now you can never edit the information on this page.

It's a bit mind-bending, but the right solution is to put off the disabling of the button for a VERY short amount of time.  This allows the function to finish running, at which time the form will be submitted.  THEN your disabling comes back around and does its thing.  We can make the time delay short enough that the computer can get its work done, but a human could never see it (or be able to double-click).  Here's how you do it:

    function disabledButton(){
      var button = document.getElementById("submit-button");
      setTimeout(function(){ button.disabled = 'true'; }, 1);
    }

This puts off the disabling for 1 millisecond (which is enough).

#### Load order

Sadly, because Rails' JavaScript files load BEFORE the elements on the page load, if you try to run this line of code directly:

    var containers = document.getElementsByClassName("association container");

then `containers` will be empty.  Instead, you have to delay this call until after the page loads, and you can do it by wrapping it in a function and making that function be called when the `window` is finished loading:

    function hideLast(){
      var containers = document.getElementsByClassName("association container");
      containers[containers.length-1].style.display = "none";
    }
    window.onload = hideLast;

#### JavaScript bugs and you

Can you see the bug in this JavaScript code?

    function hideMyField() {
      var sections = document.getElementsByClassName("association container");
      var lastsections = sections[sections.length-1];
        lastsections.color == green
      if(lastsections.style.display === 'block') {
        lastsections.style.display = 'none';
      }
      else{
        lastsections.style.display = 'block';
      }
    }

If you said "wait, I can't find a bug; the indentation's off!", then I salute you.  ;)  The third line should be unindented.  However, the third line is also the problem.  It's expecting there to be a variable called `green`, and there is not.

I bring this up not to fix that bug, but to point out something important about JavaScript bugs in general: they halt execution.  This means that if you don't have your console up, you'll expect the field to be hidden, and nothing will happen.  We could debug the last five lines until the cows come home, but they'll never be run because the control flow never makes it down there.
