require File.dirname(__FILE__) + '/../test_helper'

class MembersControllerTest < ActionController::TestCase
  context 'GET to index' do
    setup do
      get :index
    end
    should_respond_with :success
    should_assign_to :members
  end

  context 'GET to new' do
    setup do
      get :new
    end

    should_respond_with :success
    should_render_template :new
    should_assign_to :member
  end

  context 'POST to create' do
    setup do
      post :create, :member => Factory.attributes_for(:member)
      @member = Member.find(:all).last
    end
    
    should_redirect_to 'member_path(@member)'
  end

  context 'GET to show' do
    setup do
      @member = Factory(:member)
      get :show, :id => @member.id
    end
    should_respond_with :success
    should_render_template :show
    should_assign_to :member
  end

  context 'GET to edit' do
    setup do
      @member = Factory(:member)
      get :edit, :id => @member.id
    end
    should_respond_with :success
    should_render_template :edit
    should_assign_to :member
  end

  context 'PUT to update' do
    setup do
      @member = Factory(:member)
      put :update, :id => @member.id, :member => Factory.attributes_for(:member)
    end
    should_redirect_to 'member_path(@member)'
  end

  context 'DELETE to destroy' do
    setup do
      @member = Factory(:member)
      delete :destroy, :id => @member.id
    end
    should_redirect_to 'members_path'
  end
end
