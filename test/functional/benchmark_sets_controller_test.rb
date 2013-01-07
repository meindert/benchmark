require 'test_helper'

class BenchmarkSetsControllerTest < ActionController::TestCase
  setup do
    @benchmark_set = benchmark_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:benchmark_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create benchmark_set" do
    assert_difference('BenchmarkSet.count') do
      post :create, benchmark_set: {bm_id: @benchmark_set.bm_id, name: @benchmark_set.name, percentile: @benchmark_set.percentile}
    end

    assert_redirected_to benchmark_set_path(assigns(:benchmark_set))
  end

  test "should show benchmark_set" do
    get :show, id: @benchmark_set
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @benchmark_set
    assert_response :success
  end

  test "should update benchmark_set" do
    put :update, id: @benchmark_set, benchmark_set: {bm_id: @benchmark_set.bm_id, name: @benchmark_set.name, percentile: @benchmark_set.percentile}
    assert_redirected_to benchmark_set_path(assigns(:benchmark_set))
  end

  test "should destroy benchmark_set" do
    assert_difference('BenchmarkSet.count', -1) do
      delete :destroy, id: @benchmark_set
    end

    assert_redirected_to benchmark_sets_path
  end
end
