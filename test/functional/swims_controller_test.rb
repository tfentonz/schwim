require 'test_helper'

class SwimsControllerTest < ActionController::TestCase
  setup do
    @swim = swims(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:swims)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create swim" do
    assert_difference('Swim.count') do
      post :create, :swim => { :concession_card => @swim.concession_card, :kilometers => @swim.kilometers, :pool_id => @swim.pool_id, :program => @swim.program, :purchase => @swim.purchase, :swam_on => @swim.swam_on }
    end

    assert_redirected_to swim_path(assigns(:swim))
  end

  test "should show swim" do
    get :show, :id => @swim
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @swim
    assert_response :success
  end

  test "should update swim" do
    put :update, :id => @swim, :swim => { :concession_card => @swim.concession_card, :kilometers => @swim.kilometers, :pool_id => @swim.pool_id, :program => @swim.program, :purchase => @swim.purchase, :swam_on => @swim.swam_on }
    assert_redirected_to swim_path(assigns(:swim))
  end

  test "should destroy swim" do
    assert_difference('Swim.count', -1) do
      delete :destroy, :id => @swim
    end

    assert_redirected_to swims_path
  end
end
