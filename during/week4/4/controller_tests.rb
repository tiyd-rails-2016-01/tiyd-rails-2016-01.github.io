require 'test_helper'

class VoterControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: voters(:one)
    assert_response :success
  end

  test "should get create" do
    post :create
    assert_response :success
  end

  test "should fail to update without token" do
    v = Voter.create!(name: "Mason", party: "AllTheTime")
    patch :update, id: v.id, token: "iamhaxorz", voter: {name: "The Dude"}
    v.reload
    assert_equal "Mason", v.name
  end

  test "should update with token" do
    v = Voter.create!(name: "Mason", party: "AllTheTime")
    patch :update, id: v.id, token: v.token, voter: {name: "The Dude"}
    v.reload
    assert_equal "The Dude", v.name
  end

  test "should only update fields passed in" do
    v = Voter.create!(name: "Mason", party: "AllTheTime")
    patch :update, id: v.id, token: v.token, voter: {name: "The Dude"}
    v.reload
    assert_equal "AllTheTime", v.party
  end
end
