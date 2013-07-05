require 'test_helper'

class PerformanceCategoriesControllerTest < ActionController::TestCase
  setup do
    @performance_category = performance_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:performance_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create performance_category" do
    assert_difference('PerformanceCategory.count') do
      post :create, performance_category: { begin_date: @performance_category.begin_date, end_date: @performance_category.end_date, name: @performance_category.name, order: @performance_category.order }
    end

    assert_redirected_to performance_category_path(assigns(:performance_category))
  end

  test "should show performance_category" do
    get :show, id: @performance_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @performance_category
    assert_response :success
  end

  test "should update performance_category" do
    put :update, id: @performance_category, performance_category: { begin_date: @performance_category.begin_date, end_date: @performance_category.end_date, name: @performance_category.name, order: @performance_category.order }
    assert_redirected_to performance_category_path(assigns(:performance_category))
  end

  test "should destroy performance_category" do
    assert_difference('PerformanceCategory.count', -1) do
      delete :destroy, id: @performance_category
    end

    assert_redirected_to performance_categories_path
  end
end
