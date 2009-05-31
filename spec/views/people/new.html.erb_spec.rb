require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/people/new.html.erb" do
  include PeopleHelper
  
  before(:each) do
    assigns[:person] = stub_model(Person,
      :new_record? => true,
      :first_name => "value for first_name",
      :last_name => "value for last_name",
      :email => "value for email"
    )
  end

  it "renders new person form" do
    render
    
    response.should have_tag("form[action=?][method=post]", people_path) do
      with_tag("input#person_first_name[name=?]", "person[first_name]")
      with_tag("input#person_last_name[name=?]", "person[last_name]")
      with_tag("input#person_email[name=?]", "person[email]")
    end
  end
end


