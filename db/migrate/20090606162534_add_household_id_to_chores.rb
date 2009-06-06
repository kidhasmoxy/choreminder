class AddHouseholdIdToChores < ActiveRecord::Migration
  def self.up
    add_column :chores, :household_id, :integer
  end

  def self.down
    remove_column :chores, :household_id
  end
end
