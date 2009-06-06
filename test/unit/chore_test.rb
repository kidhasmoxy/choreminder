require File.dirname(__FILE__) + '/../test_helper'

class ChoreTest < ActiveSupport::TestCase
  should_have_db_column :name
  should_have_db_column :description
  should_have_db_column :duration
  should_have_db_column :on_monday
  should_have_db_column :on_tuesday
  should_have_db_column :on_wednesday
  should_have_db_column :on_thursday
  should_have_db_column :on_friday
  should_have_db_column :on_saturday
  should_have_db_column :on_sunday
  should_have_db_column :active
  
  context "When creating or updating a chore it" do
    setup do
      @chore = Factory.create(:chore)
    end
    
    should_validate_uniqueness_of :name
    should_validate_presence_of :duration
    should_validate_numericality_of :duration
    should_validate_presence_of :name
    should_belong_to :household
    should_validate_presence_of :household
  end
end
