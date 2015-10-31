require 'test_helper'

class LoginLogoutTest < ActionDispatch::IntegrationTest
  test "login page works" do
    get teachers_path
    assert_redirected_to login_path
    follow_redirect!
    assert_template "new"
    post login_path, sessions: {email: "gibberish@example.com", password: "(&*GFYIB)"}
    assert_redirected_to login_path
    post login_path, sessions: {email: "mason@example.com", password: "catsdrool"}
    assert_redirected_to teachers_path
    follow_redirect!
    assert_select "a[href=#{logout_path}]", 1
  end
end
