class CreateEvaluationTerms < ActiveRecord::Migration
  def change
    create_table :evaluation_terms do |t|
      t.integer :begin_date, :limit => 8, :null => false
      t.integer :end_date, :limit => 8, :null => false
      t.string :memo

      t.timestamps
    end
  end
end
