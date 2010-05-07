require 'spec_helper'

describe Profile do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :description => "value for description",
      :contact => "value for contact",
      :email => "value for email",
      :industry => "value for industry",
      :services => "value for services",
      :street => "value for street",
      :street_2 => "value for street_2",
      :city => "value for city",
      :state => "value for state",
      :zipcode => "value for zipcode",
      :county => "value for county",
      :phone => 1,
      :website => "value for website"
    }
  end

  it "should create a new instance given valid attributes" do
    Profile.create!(@valid_attributes)
  end
end
