require File.dirname(__FILE__) + '/../test_helper'

class HouseholdsControllerTest < ActionController::TestCase
  context 'GET to index' do
    setup do
      get :index
    end
    should_respond_with :success
    should_assign_to :households
  end

  context 'GET to new' do
    setup do
      get :new
    end

    should_respond_with :success
    should_render_template :new
    should_assign_to :household
  end

  context 'POST to create' do
    setup do
      post :create, :household => Factory.attributes_for(:household)
      @household = Household.find(:all).last
    end
    
    should_redirect_to("the new household's detail page") {household_path(@household)}
  end

  context 'GET to show' do
    setup do
      @household = Factory(:household)
      get :show, :id => @household.id
    end
    should_respond_with :success
    should_render_template :show
    should_assign_to :household
  end

  context 'GET to edit' do
    setup do
      @household = Factory(:household)
      get :edit, :id => @household.id
    end
    should_respond_with :success
    should_render_template :edit
    should_assign_to :household
  end

  context 'PUT to update' do
    setup do
      @household = Factory(:household)
      put :update, :id => @household.id, :household => Factory.attributes_for(:household)
    end
    should_redirect_to("the updated household's detail page") {household_path(@household)}
  end

  context 'DELETE to destroy' do
    setup do
      @household = Factory(:household)
      delete :destroy, :id => @household.id
    end
    should_redirect_to("the household list") {households_path}
  end
end
