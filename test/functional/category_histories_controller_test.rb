require 'test_helper'

class CategoryHistoriesControllerTest < ActionController::TestCase
  setup do
    @category_history = category_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_history" do
    assert_difference('CategoryHistory.count') do
      post :create, category_history: @category_history.attributes
    end

    assert_redirected_to category_history_path(assigns(:category_history))
  end

  test "should show category_history" do
    get :show, id: @category_history.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_history.to_param
    assert_response :success
  end

  test "should update category_history" do
    put :update, id: @category_history.to_param, category_history: @category_history.attributes
    assert_redirected_to category_history_path(assigns(:category_history))
  end

  test "should destroy category_history" do
    assert_difference('CategoryHistory.count', -1) do
      delete :destroy, id: @category_history.to_param
    end

    assert_redirected_to category_histories_path
  end
end
