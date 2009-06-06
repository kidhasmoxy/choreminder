class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :area_code
      t.integer :mobile_number
      t.boolean :manager
      t.integer :household_id

      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end
