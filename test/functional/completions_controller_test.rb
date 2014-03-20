require 'test_helper'

class CompletionsControllerTest < ActionController::TestCase
  setup do
    @completion = completions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:completions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create completion" do
    assert_difference('Completion.count') do
      post :create, :completion => @completion.attributes
    end

    assert_redirected_to completion_path(assigns(:completion))
  end

  test "should show completion" do
    get :show, :id => @completion.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @completion.to_param
    assert_response :success
  end

  test "should update completion" do
    put :update, :id => @completion.to_param, :completion => @completion.attributes
    assert_redirected_to completion_path(assigns(:completion))
  end

  test "should destroy completion" do
    assert_difference('Completion.count', -1) do
      delete :destroy, :id => @completion.to_param
    end

    assert_redirected_to completions_path
  end
end
