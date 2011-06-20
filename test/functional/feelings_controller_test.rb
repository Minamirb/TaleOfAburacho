require 'test_helper'

class FeelingsControllerTest < ActionController::TestCase
  setup do
    @feeling = feelings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feelings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feeling" do
    assert_difference('Feeling.count') do
      post :create, feeling: @feeling.attributes
    end

    assert_redirected_to feeling_path(assigns(:feeling))
  end

  test "should show feeling" do
    get :show, id: @feeling.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feeling.to_param
    assert_response :success
  end

  test "should update feeling" do
    put :update, id: @feeling.to_param, feeling: @feeling.attributes
    assert_redirected_to feeling_path(assigns(:feeling))
  end

  test "should destroy feeling" do
    assert_difference('Feeling.count', -1) do
      delete :destroy, id: @feeling.to_param
    end

    assert_redirected_to feelings_path
  end
end
