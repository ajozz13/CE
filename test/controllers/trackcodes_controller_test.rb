require 'test_helper'

class TrackcodesControllerTest < ActionController::TestCase
  setup do
    @trackcode = trackcodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trackcodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trackcode" do
    assert_difference('Trackcode.count') do
      post :create, trackcode: { description: @trackcode.description }
    end

    assert_redirected_to trackcode_path(assigns(:trackcode))
  end

  test "should show trackcode" do
    get :show, id: @trackcode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trackcode
    assert_response :success
  end

  test "should update trackcode" do
    patch :update, id: @trackcode, trackcode: { description: @trackcode.description }
    assert_redirected_to trackcode_path(assigns(:trackcode))
  end

  test "should destroy trackcode" do
    assert_difference('Trackcode.count', -1) do
      delete :destroy, id: @trackcode
    end

    assert_redirected_to trackcodes_path
  end
end
