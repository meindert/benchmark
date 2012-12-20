class BenchmarkRun < ActiveRecord::Base
  attr_accessible :act_month, :benchmark_set_id, :note
  belongs_to :user
  has_many :benchmark_facts
  has_paper_trail
end
