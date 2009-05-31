require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/chores/show.html.erb" do
  include ChoresHelper
  before(:each) do
    assigns[:chore] = @chore = stub_model(Chore,
      :name => "value for name",
      :duration => 1,
      :description => "value for description"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/1/)
    response.should have_text(/value\ for\ description/)
  end
end

