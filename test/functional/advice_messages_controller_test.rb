require 'test_helper'

class AdviceMessagesControllerTest < ActionController::TestCase
  setup do
    @advice_message = advice_messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advice_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advice_message" do
    assert_difference('AdviceMessage.count') do
      post :create, advice_message: @advice_message.attributes
    end

    assert_redirected_to advice_message_path(assigns(:advice_message))
  end

  test "should show advice_message" do
    get :show, id: @advice_message.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advice_message.to_param
    assert_response :success
  end

  test "should update advice_message" do
    put :update, id: @advice_message.to_param, advice_message: @advice_message.attributes
    assert_redirected_to advice_message_path(assigns(:advice_message))
  end

  test "should destroy advice_message" do
    assert_difference('AdviceMessage.count', -1) do
      delete :destroy, id: @advice_message.to_param
    end

    assert_redirected_to advice_messages_path
  end
end
