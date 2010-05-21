require 'spec_helper'

describe Admin::NewsItemsController, :type => :controller do

  describe "logged in users" do
    before do
      @news_item = NewsItem.create(:title=> "test title", :content => "test content")
      u = User.create(:email => "a@b.com", :password => "blahblah", :password_confirmation => "blahblah")
      UserSession.create(u)    
    end

    #Delete these examples and add some real ones
    it "should use Admin::NewsItemsController" do
      controller.should be_an_instance_of(Admin::NewsItemsController)
    end

    it "should display the index" do
      get 'index'
      response.should be_success
    end
      
    it "should show a news item" do
      get 'show', :id => @news_item.id
      response.should be_success
    end
    

    it "should show the edit page" do
      get :edit, :id => @news_item.id 
      response.should be_success
    end
  
    it "should update the news item" do
      put :update, :id => @news_item.id, :news_item => {:title => "new test"}
      @news_item.reload
      @news_item.title.should == "new test"
    end
  
    after(:all) do
      @news_item.destroy
    end
  end
  
  describe "non-logged in users" do
    
    it "should fail for non logged in users" do
      get 'index'
      response.should_not be_success
    end
    
  end

end
