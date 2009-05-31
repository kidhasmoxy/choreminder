require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Chore do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :duration => 1,
      :description => "value for description"
    }
  end

  it "should create a new instance given valid attributes" do
    Chore.create!(@valid_attributes)
  end
end
