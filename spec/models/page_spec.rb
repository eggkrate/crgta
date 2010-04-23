require 'spec_helper'

describe Page do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :content => "value for content",
      :category_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Page.create!(@valid_attributes)
  end
end
