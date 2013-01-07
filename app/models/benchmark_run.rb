class MonthValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    #unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    unless value.to_s =~ /2[0-5][0-9][0-9][0-1][0-9]/
      record.errors[attribute] << (options[:message] || "is not an eSOS date")
    end
  end
end

class BenchmarkRun < ActiveRecord::Base
  attr_accessible :act_month, :benchmark_set_id, :note
  validates_presence_of :benchmark_set_id
  validates :act_month, :presence => true, :month => true
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
