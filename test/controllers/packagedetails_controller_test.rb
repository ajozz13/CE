require 'test_helper'

class PackagedetailsControllerTest < ActionController::TestCase
  setup do
    @packagedetail = packagedetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:packagedetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create packagedetail" do
    assert_difference('Packagedetail.count') do
      post :create, packagedetail: { height: @packagedetail.height, length: @packagedetail.length, piece_weight: @packagedetail.piece_weight, tracking: @packagedetail.tracking, width: @packagedetail.width }
    end

    assert_redirected_to packagedetail_path(assigns(:packagedetail))
  end

  test "should show packagedetail" do
    get :show, id: @packagedetail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @packagedetail
    assert_response :success
  end

  test "should update packagedetail" do
    patch :update, id: @packagedetail, packagedetail: { height: @packagedetail.height, length: @packagedetail.length, piece_weight: @packagedetail.piece_weight, tracking: @packagedetail.tracking, width: @packagedetail.width }
    assert_redirected_to packagedetail_path(assigns(:packagedetail))
  end

  test "should destroy packagedetail" do
    assert_difference('Packagedetail.count', -1) do
      delete :destroy, id: @packagedetail
    end

    assert_redirected_to packagedetails_path
  end
end
