require File.dirname(__FILE__) + '/../test_helper'

class MemberTest < ActiveSupport::TestCase
  should_have_db_column :first_name
  should_have_db_column :last_name
  should_have_db_column :email
  should_have_db_column :area_code
  should_have_db_column :mobile_number
  should_have_db_column :manager
  should_have_db_column :household_id
  
  context "When creating or updating a member it" do
    setup do
      @member = Factory.create(:member)
    end
    should_belong_to :household
    should_validate_presence_of :household
    should_validate_presence_of :first_name
    should_validate_presence_of :email
    should_validate_uniqueness_of :email
  end
end
