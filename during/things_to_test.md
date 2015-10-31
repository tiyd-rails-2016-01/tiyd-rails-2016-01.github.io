---
layout: default
---

## Things/Ways to Test

#### MiniTest Statements

* `assert`
* `assert_equal`
* `assert_in_delta`
* `assert_raises(ClassOfError) do code_that_blows_up end`
* `assert_difference("method") do code_that_changes_method_result end`
* `assert_no_difference...`

#### Special Methods on Test Classes

* `def setup ... end` - runs before EVERY test
* `def teardown ... end` - runs after EVERY test

#### Rails Testing

* `def test_something` can become `test "something" do`
* `def setup` can become `setup do` (same with `teardown`)

#### Rails Controller Test Statements

* `get`, `post`, etc.
* `assert_response`
* `assert_select(css_selector)`
* `assert_select(css_selector, number_expected)`
* `assert_redirected_to`
* `assert_template`
* `assigns(:instance_variable)` - actually gives you back what's stored in that instance variable
* `response.body`
* `assert response.body =~ /something I expect/`

#### Rails Integration Test Statements

* `follow_redirect!`
* `assert_select "a[href=?]", logout_path, count: 0`
* `assert flash[:error]`
* `assert flash.empty?`

#### One Overall Approach

* Test all model methods
* Test all controller actions for successful responses
* When something breaks, ALWAYS write a test first.  Make sure it fails.  Then fix code to make the test pass.
