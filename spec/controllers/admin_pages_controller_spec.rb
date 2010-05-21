require 'spec_helper'

describe Admin::PagesController do
  
  describe "logged in users" do
    before do
      @page = Page.create(:title=>"test page", :content =>"awesome page")
        u = User.create(:email => "a@b.com", :password => "blahblah", :password_confirmation => "blahblah")
        UserSession.create(u)    
    end
  
    #Delete these examples and add some real ones
    it "should use Admin::PagesController" do
      controller.should be_an_instance_of(Admin::PagesController)
    end

    it "should update the page" do
      put :update, :id => @page.id, :page => {:content => "new content"}
      @page.reload
      @page.content.should == "new content"
    end

    it "should be successful" do
      get 'index'
      response.should be_success
    end
  
    it "should be successful" do
      get 'show', :id => @page.id
      response.should be_success
    end
  end
  
  describe "non-logged in users" do
    
    it "should fail for non logged in users" do
      get 'index'
      response.should_not be_success
    end
    
  end
end
