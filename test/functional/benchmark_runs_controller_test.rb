require 'test_helper'

class BenchmarkRunsControllerTest < ActionController::TestCase
  setup do
    @benchmark_run = benchmark_runs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:benchmark_runs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create benchmark_run" do
    assert_difference('BenchmarkRun.count') do
      post :create, benchmark_run: {act_month: @benchmark_run.act_month, benchmark_set_id: @benchmark_run.benchmark_set_id, note: @benchmark_run.note, user_id: @benchmark_run.user_id}
    end

    assert_redirected_to benchmark_run_path(assigns(:benchmark_run))
  end

  test "should show benchmark_run" do
    get :show, id: @benchmark_run
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @benchmark_run
    assert_response :success
  end

  test "should update benchmark_run" do
    put :update, id: @benchmark_run, benchmark_run: {act_month: @benchmark_run.act_month, benchmark_set_id: @benchmark_run.benchmark_set_id, note: @benchmark_run.note, user_id: @benchmark_run.user_id}
    assert_redirected_to benchmark_run_path(assigns(:benchmark_run))
  end

  test "should destroy benchmark_run" do
    assert_difference('BenchmarkRun.count', -1) do
      delete :destroy, id: @benchmark_run
    end

    assert_redirected_to benchmark_runs_path
  end
end
