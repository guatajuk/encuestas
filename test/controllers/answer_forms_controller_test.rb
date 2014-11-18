require 'test_helper'

class AnswerFormsControllerTest < ActionController::TestCase
  setup do
    @answer_form = answer_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answer_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer_form" do
    assert_difference('AnswerForm.count') do
      post :create, answer_form: { details: @answer_form.details }
    end

    assert_redirected_to answer_form_path(assigns(:answer_form))
  end

  test "should show answer_form" do
    get :show, id: @answer_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer_form
    assert_response :success
  end

  test "should update answer_form" do
    patch :update, id: @answer_form, answer_form: { details: @answer_form.details }
    assert_redirected_to answer_form_path(assigns(:answer_form))
  end

  test "should destroy answer_form" do
    assert_difference('AnswerForm.count', -1) do
      delete :destroy, id: @answer_form
    end

    assert_redirected_to answer_forms_path
  end
end
