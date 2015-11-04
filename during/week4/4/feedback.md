---
layout: default
---

## Novel API Feedback

#### Don't forget to pass parameters to actions in your tests!

Here's a test that was blowing up inexplicably:

   class GenresControllerTest < ActionController::TestCase
      test "should get show" do
        get :show
        assert response.body =~ /28/
        refute response.body =~ /16/
      end
    end

The problem was that show actions need a parameter.  Specifically, an `id`, or at least something the code can use to look up the right genre (like a name).  This is more likely to work:

    class GenresControllerTest < ActionController::TestCase
      test "should get show" do
        get :show, id: 28
        assert response.body =~ /28/
        refute response.body =~ /16/
      end
    end

#### Use Enumerable methods rather than looping over indices

Check out this code:

    def get_trails
      (0..@data["places"].length-1).each do |x|
        @trails << Trail.new(@data["places"][x])
      end
      @trails
    end

That code digs into the indices and loops over places in the `@data` array.  That's log of juggling, and there's no need!  This is better:

    def get_trails
      @trails = @data["places"].map {|d| Trail.new(d)}
    end
