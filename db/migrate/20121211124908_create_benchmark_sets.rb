class CreateBenchmarkSets < ActiveRecord::Migration
  def change
    create_table :benchmark_sets do |t|
      t.string :bm_id
      t.string :name
      t.integer :percentile

      t.timestamps
    end
  end
end
