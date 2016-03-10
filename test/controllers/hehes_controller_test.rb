require 'test_helper'

class HehesControllerTest < ActionController::TestCase
  setup do
    @hehe = hehes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hehes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hehe" do
    assert_difference('Hehe.count') do
      post :create, hehe: { nana: @hehe.nana }
    end

    assert_redirected_to hehe_path(assigns(:hehe))
  end

  test "should show hehe" do
    get :show, id: @hehe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hehe
    assert_response :success
  end

  test "should update hehe" do
    patch :update, id: @hehe, hehe: { nana: @hehe.nana }
    assert_redirected_to hehe_path(assigns(:hehe))
  end

  test "should destroy hehe" do
    assert_difference('Hehe.count', -1) do
      delete :destroy, id: @hehe
    end

    assert_redirected_to hehes_path
  end
end
