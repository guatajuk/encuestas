require 'test_helper'

class SurveyTypesControllerTest < ActionController::TestCase
  setup do
    @survey_type = survey_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survey_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey_type" do
    assert_difference('SurveyType.count') do
      post :create, survey_type: { name: @survey_type.name }
    end

    assert_redirected_to survey_type_path(assigns(:survey_type))
  end

  test "should show survey_type" do
    get :show, id: @survey_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey_type
    assert_response :success
  end

  test "should update survey_type" do
    patch :update, id: @survey_type, survey_type: { name: @survey_type.name }
    assert_redirected_to survey_type_path(assigns(:survey_type))
  end

  test "should destroy survey_type" do
    assert_difference('SurveyType.count', -1) do
      delete :destroy, id: @survey_type
    end

    assert_redirected_to survey_types_path
  end
end
