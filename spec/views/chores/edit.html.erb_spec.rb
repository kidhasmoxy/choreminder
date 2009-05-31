require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/chores/edit.html.erb" do
  include ChoresHelper
  
  before(:each) do
    assigns[:chore] = @chore = stub_model(Chore,
      :new_record? => false,
      :name => "value for name",
      :duration => 1,
      :description => "value for description"
    )
  end

  it "renders the edit chore form" do
    render
    
    response.should have_tag("form[action=#{chore_path(@chore)}][method=post]") do
      with_tag('input#chore_name[name=?]', "chore[name]")
      with_tag('input#chore_duration[name=?]', "chore[duration]")
      with_tag('textarea#chore_description[name=?]', "chore[description]")
    end
  end
end


