class BenchmarkFact < ActiveRecord::Base
  attr_accessible :avg_value, :benchmark_run_id, :bm_value, :category_id, :department_id, :highest_value, :lowest_value, :measure_id, :median_value, :region_id, :upper_avg_value

  belongs_to :benchmark_run
end
