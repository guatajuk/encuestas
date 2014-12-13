require 'test_helper'

class QuesControllerTest < ActionController::TestCase
  setup do
    @que = ques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create que" do
    assert_difference('Que.count') do
      post :create, que: {  }
    end

    assert_redirected_to que_path(assigns(:que))
  end

  test "should show que" do
    get :show, id: @que
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @que
    assert_response :success
  end

  test "should update que" do
    patch :update, id: @que, que: {  }
    assert_redirected_to que_path(assigns(:que))
  end

  test "should destroy que" do
    assert_difference('Que.count', -1) do
      delete :destroy, id: @que
    end

    assert_redirected_to ques_path
  end
end
