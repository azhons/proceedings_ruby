require 'test_helper'

class ProceedingsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proceedings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proceeding" do
    assert_difference('Proceeding.count') do
      post :create, :proceeding => { }
    end

    assert_redirected_to proceeding_path(assigns(:proceeding))
  end

  test "should show proceeding" do
    get :show, :id => proceedings(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => proceedings(:one).to_param
    assert_response :success
  end

  test "should update proceeding" do
    put :update, :id => proceedings(:one).to_param, :proceeding => { }
    assert_redirected_to proceeding_path(assigns(:proceeding))
  end

  test "should destroy proceeding" do
    assert_difference('Proceeding.count', -1) do
      delete :destroy, :id => proceedings(:one).to_param
    end

    assert_redirected_to proceedings_path
  end
end
