class CreateBenchmarkFacts < ActiveRecord::Migration
  def change
    create_table :benchmark_facts do |t|
      t.integer :benchmark_run_id
      t.integer :region_id
      t.integer :category_id
      t.integer :department_id
      t.integer :measure_id
      t.decimal :lowest_value
      t.decimal :avg_value
      t.decimal :upper_avg_value
      t.decimal :highest_value
      t.decimal :median_value
      t.decimal :bm_value

      t.timestamps
    end
  end
end
