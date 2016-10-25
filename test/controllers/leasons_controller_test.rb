require 'test_helper'

class LeasonsControllerTest < ActionController::TestCase
  setup do
    @leason = leasons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leasons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leason" do
    assert_difference('Leason.count') do
      post :create, leason: { class_name: @leason.class_name, end: @leason.end, start: @leason.start }
    end

    assert_redirected_to leason_path(assigns(:leason))
  end

  test "should show leason" do
    get :show, id: @leason
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leason
    assert_response :success
  end

  test "should update leason" do
    patch :update, id: @leason, leason: { class_name: @leason.class_name, end: @leason.end, start: @leason.start }
    assert_redirected_to leason_path(assigns(:leason))
  end

  test "should destroy leason" do
    assert_difference('Leason.count', -1) do
      delete :destroy, id: @leason
    end

    assert_redirected_to leasons_path
  end
end
