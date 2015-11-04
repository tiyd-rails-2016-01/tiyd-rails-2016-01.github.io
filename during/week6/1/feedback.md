---
layout: default
---

## Restaurant Menu Feedback

#### Markdown

Here is some markdown code from someone's README:

    This Rails application offers an easily maintained online menu for restaurant owners.  
    Bootstrap CSS stylings make the layout look clean and organized, and the easy-to-use
    functions (namely, add a dish, edit a dish, or delete a dish) allow for instant
    updates when inventory changes.
    *Credit to [Locally Preserved](www.locallypreserved.com) for the images.
    *Link to [Heroku App](http://floating-castle-4546.herokuapp.com/)
    *Link to [Workflow Diagram](https://www.lucidchart.com/invitations/accept/a81ff53d-927e-4456-9590-71727fdda1e1)

Sadly, the bulleted list didn't end up getting formatted nicely.  Markdown is finicky, and needs space both before the bulleted list and after each *, like this:

    This Rails application offers an easily maintained online menu for restaurant owners.  
    Bootstrap CSS stylings make the layout look clean and organized, and the easy-to-use
    functions (namely, add a dish, edit a dish, or delete a dish) allow for instant
    updates when inventory changes.

    * Credit to [Locally Preserved](www.locallypreserved.com) for the images.
    * Link to [Heroku App](http://floating-castle-4546.herokuapp.com/)
    * Link to [Workflow Diagram](https://www.lucidchart.com/invitations/accept/a81ff53d-927e-4456-9590-71727fdda1e1)

#### Extraneous instance variable

This index action was a bit suspicious:

    def index
      @plates = Plate.all
      @courses = Course.all
    end

Since this action shows a separate section for each course, with all of the plates for that course listed inside that section, the view loops over all courses, and for each does `course.plates`.  Because of this, the view never needed a list of ALL plates, so the `@plates` line can be removed from the controller.
