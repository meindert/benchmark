class BenchmarkSet < ActiveRecord::Base
  attr_accessible :bm_id, :name, :percentile
  has_many :benchmark_runs
end
