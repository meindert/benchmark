class BenchmarkRun < ActiveRecord::Base
  attr_accessible :act_month, :benchmark_set_id, :note
  belongs_to :user
  belongs_to :benchmark_set
  has_many :benchmark_facts
  has_paper_trail

  def self.import(file)

    #Verify file
    CSV.foreach(file.path, headers: true) do |row|
      #BenchmarkFact.create! row.to_hash
      p row.inspect
    end

    #import facts
    CSV.foreach(file.path, headers: true) do |row|
      #BenchmarkFact.create! row.to_hash
      p row.inspect
    end

  end
end
