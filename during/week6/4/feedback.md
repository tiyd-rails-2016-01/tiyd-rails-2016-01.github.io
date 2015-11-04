---
layout: default
---

## Survey Opossum Feedback

We spent a lot of time in class on this one, but here are a few things:

#### Removing files and folders you don't need anymore

It's true that when you have extra files sitting around in Rails, they don't usually hurt anything.  However, they DO make it much harder for developers (including you) to (a) know where you're supposed to be working and (b) find bugs.

Here's an example of a file system that could use a lot of cleaning up:

![File System In Need of Cleaning](many_files.png)

#### Have a create view!

I saw this sort of controller code come up with three different groups:

    def create
      @submission = Submission.new(submission_params)
      if @submission.save && @submission.survey.author.id == session[:author_id]
        redirect_to @submission, notice: 'Submission was successfully created.'
      elsif @submission.save
        redirect_to thankyou_submissions_path
      else
        redirect_to @submission.survey, notice: "All required questions must be answered."
      end
    end

    def thankyou
    end

In English, it's doing the create work, then (like every other create we've seen) redirecting to a different page.

However, if `thankyou`'s purpose is only to render a thank you view, why have it at all?  Instead, it's better to rename the `thankyou.html.erb` file to `create.html.erb` and just remove the redirect line.  Simpler, better!

#### Complex `reject_if`s

Here's an `accepts_nested_attributes_for` line:

    accepts_nested_attributes_for :questions, allow_destroy: true,
        reject_if: proc { |attributes| attributes['question_text'].blank? },
        reject_if: proc { |attributes| attributes['question_type'].blank? }

I don't think this is doing what the author expected it to do.  Should the question be rejected if the text AND the type are blank, or if either the text OR the type are blank?  I suspect the latter, and this is the better way to write it:

    accepts_nested_attributes_for :questions, allow_destroy: true,
        reject_if: proc { |a| a['question_text'].blank? || a['question_type'].blank? }
