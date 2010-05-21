require 'spec_helper'

describe Admin::PagesController do

  #Delete these examples and add some real ones
  it "should use Admin::PagesController" do
    controller.should be_an_instance_of(Admin::PagesController)
  end


  
    it "should be successful" do
      u = User.create(:email => "a@b.com", :password => "blahblah", :password_confirmation => "blahblah")
      UserSession.create(users(u))
      get 'index'
      response.should be_success
    end

  describe "GET 'show'" do
    it "should be successful" do
      get 'show'
      response.should be_success
    end
  end

  describe "GET 'create'" do
    it "should be successful" do
      get 'create'
      response.should be_success
    end
  end

  describe "GET 'update'" do
    it "should be successful" do
      get 'update'
      response.should be_success
    end
  end

  describe "GET 'delete'" do
    it "should be successful" do
      get 'delete'
      response.should be_success
    end
  end
end
