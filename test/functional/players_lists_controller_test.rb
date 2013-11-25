require 'test_helper'

class PlayersListsControllerTest < ActionController::TestCase
  setup do
    @players_list = players_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:players_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create players_list" do
    assert_difference('PlayersList.count') do
      post :create, players_list: { date: @players_list.date, group_name: @players_list.group_name, user_id: @players_list.user_id }
    end

    assert_redirected_to players_list_path(assigns(:players_list))
  end

  test "should show players_list" do
    get :show, id: @players_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @players_list
    assert_response :success
  end

  test "should update players_list" do
    put :update, id: @players_list, players_list: { date: @players_list.date, group_name: @players_list.group_name, user_id: @players_list.user_id }
    assert_redirected_to players_list_path(assigns(:players_list))
  end

  test "should destroy players_list" do
    assert_difference('PlayersList.count', -1) do
      delete :destroy, id: @players_list
    end

    assert_redirected_to players_lists_path
  end
end
