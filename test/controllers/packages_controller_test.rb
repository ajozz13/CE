require 'test_helper'

class PackagesControllerTest < ActionController::TestCase
  setup do
    @package = packages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create package" do
    assert_difference('Package.count') do
      post :create, package: { customer_id: @package.customer_id, sender_address: @package.sender_address, sender_city: @package.sender_city, sender_country: @package.sender_country, sender_email: @package.sender_email, sender_name: @package.sender_name, sender_phone: @package.sender_phone, sender_state: @package.sender_state, tracking: @package.tracking, value: @package.value, weight: @package.weight }
    end

    assert_redirected_to package_path(assigns(:package))
  end

  test "should show package" do
    get :show, id: @package
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @package
    assert_response :success
  end

  test "should update package" do
    patch :update, id: @package, package: { customer_id: @package.customer_id, sender_address: @package.sender_address, sender_city: @package.sender_city, sender_country: @package.sender_country, sender_email: @package.sender_email, sender_name: @package.sender_name, sender_phone: @package.sender_phone, sender_state: @package.sender_state, tracking: @package.tracking, value: @package.value, weight: @package.weight }
    assert_redirected_to package_path(assigns(:package))
  end

  test "should destroy package" do
    assert_difference('Package.count', -1) do
      delete :destroy, id: @package
    end

    assert_redirected_to packages_path
  end
end
