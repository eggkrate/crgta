require 'spec_helper'

describe User do
  
  before(:each) do
    @person = {
      :email => "a@b.com",
      :password => "blah",
      :password_confirmation => "blah",
      :profile_attributes => {
        :name => "Test Name"        
      }
    }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@person)
  end
  
  it "should supply a valid name"
end
