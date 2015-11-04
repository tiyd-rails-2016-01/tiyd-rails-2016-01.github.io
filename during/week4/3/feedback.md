---
layout: default
---

## Voter API Feedback

#### Being the RIGHT user, not just ANY user

Some submissions had a line like this:

    user = Voter.where(security_key: api_key).first if api_key

This looks up a user based on an key.  However, this would let me in if I had ANY valid key.  In other words, I could use my personal key to vote as ANYONE.  As we discussed in class, you should look the Voter up by `params[:id]`, then check to see if the key matches that specific user.

#### The magic number to rule them all

So...

    test "shows only one race" do
      senate = Race.create!(name: "Senate")
      get :show, {id: 980190963}
      assert_response :success
    end

That's a serious magic number.  Instead of putting that in (which might be different every time), do this:

    test "shows only one race" do
      senate = Race.create!(name: "Senate")
      get :show, {id: senate.id}
      assert_response :success
    end

#### More magic numbers

This test... probably won't work:

    test "should be able to destroy" do
      assert_difference("Vote.count") do
        delete :destroy, {voter_id: 1, candidate_id: 1, race_id: 2}
      end
    end

First off, if you're deleting something, it's best to assert that the difference will be negative one, like this: `assert_difference("Vote.count", -1)`.

Second, when you destroy, all you need to pass it is an `id`.

Beyond that, the numbers are really arbitrary.  The right way to do this is to write fixtures, then change your test to look more like this.

    test "should be able to destroy" do
      assert_difference("Vote.count", -1) do
        delete :destroy, id: vote(:one).id
      end
    end

#### Positive and negative in most tests

Here's a test that works well:

    test "candidate_id" do
      two = Vote.new(voter_id: 1)
      refute two.save
    end

It will be better, though, if it also had an `assert`.  Right now this test would be perfectly happy if it was always impossible to save a vote.  Probably want to make sure that it WILL save if you give it everything that it needs.

#### Where to put `before_action`

This code (which did not run) is worth discussing:

    def show
      before_action :require_security_key
      render json: Voter.find_by_id(params[:id])
    end

If you're going to use `before_action`, it goes outside the method.  If you want it to apply to EVERY action in the controller, you write it like this:

    class VotersController...
      before_action :require_security_key
      ...
    end

If you want to apply to ONLY the show action, you write it like this:

    class VotersController...
      before_action :require_security_key, only: [:show]
      ...
    end

You can put more things in that array if you want it to only apply to a few actions.
