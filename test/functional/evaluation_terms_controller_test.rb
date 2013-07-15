require 'test_helper'

class EvaluationTermsControllerTest < ActionController::TestCase
  setup do
    @evaluation_term = evaluation_terms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluation_terms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluation_term" do
    assert_difference('EvaluationTerm.count') do
      post :create, evaluation_term: { begin_date: @evaluation_term.begin_date, end_date: @evaluation_term.end_date, memo: @evaluation_term.memo }
    end

    assert_redirected_to evaluation_term_path(assigns(:evaluation_term))
  end

  test "should show evaluation_term" do
    get :show, id: @evaluation_term
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluation_term
    assert_response :success
  end

  test "should update evaluation_term" do
    put :update, id: @evaluation_term, evaluation_term: { begin_date: @evaluation_term.begin_date, end_date: @evaluation_term.end_date, memo: @evaluation_term.memo }
    assert_redirected_to evaluation_term_path(assigns(:evaluation_term))
  end

  test "should destroy evaluation_term" do
    assert_difference('EvaluationTerm.count', -1) do
      delete :destroy, id: @evaluation_term
    end

    assert_redirected_to evaluation_terms_path
  end
end
