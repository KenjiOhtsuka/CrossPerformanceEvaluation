class CreatePerformanceCategories < ActiveRecord::Migration
  def change
    create_table :performance_categories do |t|
      t.string :name, :null => false
      t.string :description, :null => false
      t.integer :begin_date, :limit => 8, :null => false
      t.integer :end_date, :limit => 8, :null => false
      t.integer :order, :null => false, :default => 0

      t.timestamps
    end
  end
end
