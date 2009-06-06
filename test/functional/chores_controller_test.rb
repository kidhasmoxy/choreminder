require File.dirname(__FILE__) + '/../test_helper'

class ChoresControllerTest < ActionController::TestCase
  context 'GET to index' do
    setup do
      @household = Factory.create(:household)
      get :index, :household_id => @household
    end
    should_respond_with :success
    should_assign_to :chores
  end

  context 'GET to new' do
    setup do
      @household = Factory.create(:household)
      get :new, :household_id => @household
    end

    should_respond_with :success
    should_render_template :new
    should_assign_to :chore
  end

  context 'POST to create' do
    setup do
      @household = Factory.create(:household)
      post :create, :chore => Factory.attributes_for(:chore), :household_id => @household
      @chore = Chore.find(:all).last
    end
    
    should_redirect_to("the new chore's information page") {chore_path(@chore)}
    
  end

  context 'GET to show' do
    setup do
      @chore = Factory(:chore)
      get :show, :id => @chore.id
    end
    should_respond_with :success
    should_render_template :show
    should_assign_to :chore
  end

  context 'GET to edit' do
    setup do
      @chore = Factory(:chore)
      get :edit, :id => @chore.id
    end
    should_respond_with :success
    should_render_template :edit
    should_assign_to :chore
  end

  context 'PUT to update' do
    setup do
      @chore = Factory(:chore)
      put :update, :id => @chore.id, :chore => Factory.attributes_for(:chore)
    end
    should_redirect_to("the chore's information page") {chore_path(@chore)}
  end

  context 'DELETE to destroy' do
    setup do
      @chore = Factory(:chore)
      delete :destroy, :id => @chore.id
    end
    should_redirect_to("the household chores list") {household_chores_path(@chore.household_id)}
  end
end
