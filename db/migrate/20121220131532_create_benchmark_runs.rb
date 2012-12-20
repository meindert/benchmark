class CreateBenchmarkRuns < ActiveRecord::Migration
  def change
    create_table :benchmark_runs do |t|
      t.integer :benchmark_set_id
      t.integer :act_month
      t.string :note
      t.integer :user_id

      t.timestamps
    end
  end
end
