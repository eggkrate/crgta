require 'spec_helper'

describe NewsItem do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :content => "value for content",
      :date => Date.today
    }
  end

  it "should create a new instance given valid attributes" do
    NewsItem.create!(@valid_attributes)
  end
end
