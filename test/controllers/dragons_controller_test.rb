require 'test_helper'

class DragonsControllerTest < ActionController::TestCase
  setup do
    @dragon = dragons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dragons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dragon" do
    assert_difference('Dragon.count') do
      post :create, dragon: { gender: @dragon.gender, name: @dragon.name, race: @dragon.race, user_id: @dragon.user_id }
    end

    assert_redirected_to dragon_path(assigns(:dragon))
  end

  test "should show dragon" do
    get :show, id: @dragon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dragon
    assert_response :success
  end

  test "should update dragon" do
    patch :update, id: @dragon, dragon: { gender: @dragon.gender, name: @dragon.name, race: @dragon.race, user_id: @dragon.user_id }
    assert_redirected_to dragon_path(assigns(:dragon))
  end

  test "should destroy dragon" do
    assert_difference('Dragon.count', -1) do
      delete :destroy, id: @dragon
    end

    assert_redirected_to dragons_path
  end
end
