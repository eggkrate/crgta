require 'spec_helper'

describe NewsItemsController, :type => :controller do

  before(:all) do
    @news_item = NewsItem.create(:title=> "test title", :content => "test content")
  end

  it "should use NewsItemsController" do
    controller.should be_an_instance_of(NewsItemsController)
  end

  it "should display the index" do
    get 'index'
    response.should be_success
  end
      
  it "should show a news item" do
    get 'show', :id => @news_item.id
    response.should be_success
  end

  after(:all) do
    @news_item.destroy
  end
  

end
