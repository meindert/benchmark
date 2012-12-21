require 'test_helper'

class BenchmarkFactsControllerTest < ActionController::TestCase
  setup do
    @benchmark_fact = benchmark_facts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:benchmark_facts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create benchmark_fact" do
    assert_difference('BenchmarkFact.count') do
      post :create, benchmark_fact: {avg_value: @benchmark_fact.avg_value, benchmark_run_id: @benchmark_fact.benchmark_run_id, bm_value: @benchmark_fact.bm_value, category_id: @benchmark_fact.category_id, department_id: @benchmark_fact.department_id, highest_value: @benchmark_fact.highest_value, lowest_value: @benchmark_fact.lowest_value, measure_id: @benchmark_fact.measure_id, median_value: @benchmark_fact.median_value, region_id: @benchmark_fact.region_id, upper_avg_value: @benchmark_fact.upper_avg_value}
    end

    assert_redirected_to benchmark_fact_path(assigns(:benchmark_fact))
  end

  test "should show benchmark_fact" do
    get :show, id: @benchmark_fact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @benchmark_fact
    assert_response :success
  end

  test "should update benchmark_fact" do
    put :update, id: @benchmark_fact, benchmark_fact: {avg_value: @benchmark_fact.avg_value, benchmark_run_id: @benchmark_fact.benchmark_run_id, bm_value: @benchmark_fact.bm_value, category_id: @benchmark_fact.category_id, department_id: @benchmark_fact.department_id, highest_value: @benchmark_fact.highest_value, lowest_value: @benchmark_fact.lowest_value, measure_id: @benchmark_fact.measure_id, median_value: @benchmark_fact.median_value, region_id: @benchmark_fact.region_id, upper_avg_value: @benchmark_fact.upper_avg_value}
    assert_redirected_to benchmark_fact_path(assigns(:benchmark_fact))
  end

  test "should destroy benchmark_fact" do
    assert_difference('BenchmarkFact.count', -1) do
      delete :destroy, id: @benchmark_fact
    end

    assert_redirected_to benchmark_facts_path
  end
end
