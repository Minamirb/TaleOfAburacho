require 'test_helper'

class SakesControllerTest < ActionController::TestCase
  setup do
    @sake = sakes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sakes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sake" do
    assert_difference('Sake.count') do
      post :create, sake: @sake.attributes
    end

    assert_redirected_to sake_path(assigns(:sake))
  end

  test "should get edit" do
    get :edit, id: @sake.to_param
    assert_response :success
  end

  test "should update sake" do
    put :update, id: @sake.to_param, sake: @sake.attributes
    assert_redirected_to sake_path(assigns(:sake))
  end

  test "should destroy sake" do
    assert_difference('Sake.count', -1) do
      delete :destroy, id: @sake.to_param
    end

    assert_redirected_to sakes_path
  end
end
