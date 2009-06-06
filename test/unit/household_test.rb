require File.dirname(__FILE__) + '/../test_helper'

class HouseholdTest < ActiveSupport::TestCase
  should_have_db_column :name
  context "When creating or updating a household it" do
    setup do
      @household = Factory.create(:household)
    end
    
    should_validate_presence_of :name
    should_have_many :chores, :members
  end
end
