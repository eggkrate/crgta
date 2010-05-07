require 'spec_helper'

describe PagesController, :type => :controller do

  before(:all) do
    @category = Category.create(:name => "test category")
    @page = Page.create(:title=> "test title", :content => "test content", :category => @category)
    @categoryless_page = Page.create(:title=> "test title", :content => "test content")
  end

  it "should use PagesController" do
    controller.should be_an_instance_of(PagesController)
  end

  it "should display the index" do
    get 'index'
    response.should be_success
  end
      
  it "should show a page" #do
    #This is broken because we are using friendly_id, we need to figure out how to
    # get friendly_id to generate ids in the test database.
    
    #get 'show', :id => @page.id
    #response.should be_success
  #end

  after(:all) do
    @page.destroy
  end
  

end
