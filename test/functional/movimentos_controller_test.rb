require 'test_helper'

class MovimentosControllerTest < ActionController::TestCase
  setup do
    @movimento = movimentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movimentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movimento" do
    assert_difference('Movimento.count') do
      post :create, :movimento => @movimento.attributes
    end

    assert_redirected_to movimento_path(assigns(:movimento))
  end

  test "should show movimento" do
    get :show, :id => @movimento.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @movimento.to_param
    assert_response :success
  end

  test "should update movimento" do
    put :update, :id => @movimento.to_param, :movimento => @movimento.attributes
    assert_redirected_to movimento_path(assigns(:movimento))
  end

  test "should destroy movimento" do
    assert_difference('Movimento.count', -1) do
      delete :destroy, :id => @movimento.to_param
    end

    assert_redirected_to movimentos_path
  end
end
