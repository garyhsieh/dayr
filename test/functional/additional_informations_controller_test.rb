require 'test_helper'

class AdditionalInformationsControllerTest < ActionController::TestCase
  setup do
    @additional_information = additional_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:additional_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create additional_information" do
    assert_difference('AdditionalInformation.count') do
      post :create, additional_information: @additional_information.attributes
    end

    assert_redirected_to additional_information_path(assigns(:additional_information))
  end

  test "should show additional_information" do
    get :show, id: @additional_information.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @additional_information.to_param
    assert_response :success
  end

  test "should update additional_information" do
    put :update, id: @additional_information.to_param, additional_information: @additional_information.attributes
    assert_redirected_to additional_information_path(assigns(:additional_information))
  end

  test "should destroy additional_information" do
    assert_difference('AdditionalInformation.count', -1) do
      delete :destroy, id: @additional_information.to_param
    end

    assert_redirected_to additional_informations_path
  end
end
