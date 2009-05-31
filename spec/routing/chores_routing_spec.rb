require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ChoresController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "chores", :action => "index").should == "/chores"
    end
  
    it "maps #new" do
      route_for(:controller => "chores", :action => "new").should == "/chores/new"
    end
  
    it "maps #show" do
      route_for(:controller => "chores", :action => "show", :id => "1").should == "/chores/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "chores", :action => "edit", :id => "1").should == "/chores/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "chores", :action => "create").should == {:path => "/chores", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "chores", :action => "update", :id => "1").should == {:path =>"/chores/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "chores", :action => "destroy", :id => "1").should == {:path =>"/chores/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/chores").should == {:controller => "chores", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/chores/new").should == {:controller => "chores", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/chores").should == {:controller => "chores", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/chores/1").should == {:controller => "chores", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/chores/1/edit").should == {:controller => "chores", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/chores/1").should == {:controller => "chores", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/chores/1").should == {:controller => "chores", :action => "destroy", :id => "1"}
    end
  end
end
