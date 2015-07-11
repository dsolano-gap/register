require 'test_helper'

class UserCommunitiesControllerTest < ActionController::TestCase
  setup do
    @user_community = user_communities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_communities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_community" do
    assert_difference('UserCommunity.count') do
      post :create, user_community: { email: @user_community.email, name: @user_community.name }
    end

    assert_redirected_to user_community_path(assigns(:user_community))
  end

  test "should show user_community" do
    get :show, id: @user_community
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_community
    assert_response :success
  end

  test "should update user_community" do
    patch :update, id: @user_community, user_community: { email: @user_community.email, name: @user_community.name }
    assert_redirected_to user_community_path(assigns(:user_community))
  end

  test "should destroy user_community" do
    assert_difference('UserCommunity.count', -1) do
      delete :destroy, id: @user_community
    end

    assert_redirected_to user_communities_path
  end
end
