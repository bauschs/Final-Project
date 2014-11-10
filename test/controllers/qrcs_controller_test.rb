require 'test_helper'

class QrcsControllerTest < ActionController::TestCase
  setup do
    @qrc = qrcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qrcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qrc" do
    assert_difference('Qrc.count') do
      post :create, qrc: { code: @qrc.code }
    end

    assert_redirected_to qrc_path(assigns(:qrc))
  end

  test "should show qrc" do
    get :show, id: @qrc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qrc
    assert_response :success
  end

  test "should update qrc" do
    patch :update, id: @qrc, qrc: { code: @qrc.code }
    assert_redirected_to qrc_path(assigns(:qrc))
  end

  test "should destroy qrc" do
    assert_difference('Qrc.count', -1) do
      delete :destroy, id: @qrc
    end

    assert_redirected_to qrcs_path
  end
end
