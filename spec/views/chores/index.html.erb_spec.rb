require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/chores/index.html.erb" do
  include ChoresHelper
  
  before(:each) do
    assigns[:chores] = [
      stub_model(Chore,
        :name => "value for name",
        :duration => 1,
        :description => "value for description"
      ),
      stub_model(Chore,
        :name => "value for name",
        :duration => 1,
        :description => "value for description"
      )
    ]
  end

  it "renders a list of chores" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", "value for description".to_s, 2)
  end
end

