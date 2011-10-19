require 'test_helper'

class MydisksControllerTest < ActionController::TestCase
  setup do
    @mydisk = mydisks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mydisks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mydisk" do
    assert_difference('Mydisk.count') do
      post :create, mydisk: @mydisk.attributes
    end

    assert_redirected_to mydisk_path(assigns(:mydisk))
  end

  test "should show mydisk" do
    get :show, id: @mydisk.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mydisk.to_param
    assert_response :success
  end

  test "should update mydisk" do
    put :update, id: @mydisk.to_param, mydisk: @mydisk.attributes
    assert_redirected_to mydisk_path(assigns(:mydisk))
  end

  test "should destroy mydisk" do
    assert_difference('Mydisk.count', -1) do
      delete :destroy, id: @mydisk.to_param
    end

    assert_redirected_to mydisks_path
  end
end
