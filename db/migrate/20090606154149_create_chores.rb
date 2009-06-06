class CreateChores < ActiveRecord::Migration
  def self.up
    create_table :chores do |t|
      t.string :name
      t.string :description
      t.integer :duration
      t.boolean :on_monday
      t.boolean :on_tuesday
      t.boolean :on_wednesday
      t.boolean :on_thursday
      t.boolean :on_friday
      t.boolean :on_saturday
      t.boolean :on_sunday
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :chores
  end
end
