require 'test_helper'

class CtsControllerTest < ActionController::TestCase
  setup do
    @ct = cts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ct" do
    assert_difference('Ct.count') do
      post :create, ct: { description: @ct.description }
    end

    assert_redirected_to ct_path(assigns(:ct))
  end

  test "should show ct" do
    get :show, id: @ct
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ct
    assert_response :success
  end

  test "should update ct" do
    put :update, id: @ct, ct: { description: @ct.description }
    assert_redirected_to ct_path(assigns(:ct))
  end

  test "should destroy ct" do
    assert_difference('Ct.count', -1) do
      delete :destroy, id: @ct
    end

    assert_redirected_to cts_path
  end
end
