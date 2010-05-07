require 'spec_helper'

describe Admin::PagesController do
  
  before(:all) do
    @page = Page.create(:title=>"test page", :content =>"awesome page")
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

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get 'show', :id => @page.id
      response.should be_success
    end
  end
  
end
