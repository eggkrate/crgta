require 'spec_helper'

describe "/profiles/show.html.erb" do
  include ProfilesHelper
  before(:each) do
    assigns[:profile] = @profile = stub_model(Profile,
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
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ description/)
    response.should have_text(/value\ for\ contact/)
    response.should have_text(/value\ for\ email/)
    response.should have_text(/value\ for\ industry/)
    response.should have_text(/value\ for\ services/)
    response.should have_text(/value\ for\ street/)
    response.should have_text(/value\ for\ street_2/)
    response.should have_text(/value\ for\ city/)
    response.should have_text(/value\ for\ state/)
    response.should have_text(/value\ for\ zipcode/)
    response.should have_text(/value\ for\ county/)
    response.should have_text(/1/)
    response.should have_text(/value\ for\ website/)
  end
end
