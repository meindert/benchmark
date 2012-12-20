class BenchmarkRun < ActiveRecord::Base
  attr_accessible :act_month, :benchmark_set_id, :note
  has_paper_trail
end
