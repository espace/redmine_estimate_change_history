class CreateEstimateUpdates < ActiveRecord::Migration
  def self.up
    create_table :estimate_updates do |t|
      t.integer :issue_id
      t.float :old_estimated_hours
      t.float :new_estimated_hours
      t.timestamps
    end
  end

  def self.down
    drop_table :estimate_updates
  end
end
