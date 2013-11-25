require 'test_helper'

class StraddlesControllerTest < ActionController::TestCase
  setup do
    @straddle = straddles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:straddles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create straddle" do
    assert_difference('Straddle.count') do
      post :create, straddle: { ask: @straddle.ask, bid: @straddle.bid, month: @straddle.month, strike: @straddle.strike, year: @straddle.year }
    end

    assert_redirected_to straddle_path(assigns(:straddle))
  end

  test "should show straddle" do
    get :show, id: @straddle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @straddle
    assert_response :success
  end

  test "should update straddle" do
    put :update, id: @straddle, straddle: { ask: @straddle.ask, bid: @straddle.bid, month: @straddle.month, strike: @straddle.strike, year: @straddle.year }
    assert_redirected_to straddle_path(assigns(:straddle))
  end

  test "should destroy straddle" do
    assert_difference('Straddle.count', -1) do
      delete :destroy, id: @straddle
    end

    assert_redirected_to straddles_path
  end
end
