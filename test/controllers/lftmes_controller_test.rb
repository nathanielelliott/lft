require 'test_helper'

class LftmesControllerTest < ActionController::TestCase
  setup do
    @lftme = lftmes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lftmes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lftme" do
    assert_difference('Lftme.count') do
      post :create, lftme: { location: @lftme.location, request: @lftme.request, user: @lftme.user }
    end

    assert_redirected_to lftme_path(assigns(:lftme))
  end

  test "should show lftme" do
    get :show, id: @lftme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lftme
    assert_response :success
  end

  test "should update lftme" do
    patch :update, id: @lftme, lftme: { location: @lftme.location, request: @lftme.request, user: @lftme.user }
    assert_redirected_to lftme_path(assigns(:lftme))
  end

  test "should destroy lftme" do
    assert_difference('Lftme.count', -1) do
      delete :destroy, id: @lftme
    end

    assert_redirected_to lftmes_path
  end
end
