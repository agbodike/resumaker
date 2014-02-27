require 'test_helper'

class ExperienceItemsControllerTest < ActionController::TestCase
  setup do
    @experience_item = experience_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:experience_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create experience_item" do
    assert_difference('ExperienceItem.count') do
      post :create, experience_item: { description: @experience_item.description, experience_id: @experience_item.experience_id }
    end

    assert_redirected_to experience_item_path(assigns(:experience_item))
  end

  test "should show experience_item" do
    get :show, id: @experience_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @experience_item
    assert_response :success
  end

  test "should update experience_item" do
    patch :update, id: @experience_item, experience_item: { description: @experience_item.description, experience_id: @experience_item.experience_id }
    assert_redirected_to experience_item_path(assigns(:experience_item))
  end

  test "should destroy experience_item" do
    assert_difference('ExperienceItem.count', -1) do
      delete :destroy, id: @experience_item
    end

    assert_redirected_to experience_items_path
  end
end
