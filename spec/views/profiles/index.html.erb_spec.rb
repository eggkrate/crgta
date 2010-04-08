require 'spec_helper'

describe "/profiles/index.html.erb" do
  include ProfilesHelper

  before(:each) do
    assigns[:profiles] = [
      stub_model(Profile,
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
      ),
      stub_model(Profile,
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
    ]
  end

  it "renders a list of profiles" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for description".to_s, 2)
    response.should have_tag("tr>td", "value for contact".to_s, 2)
    response.should have_tag("tr>td", "value for email".to_s, 2)
    response.should have_tag("tr>td", "value for industry".to_s, 2)
    response.should have_tag("tr>td", "value for services".to_s, 2)
    response.should have_tag("tr>td", "value for street".to_s, 2)
    response.should have_tag("tr>td", "value for street_2".to_s, 2)
    response.should have_tag("tr>td", "value for city".to_s, 2)
    response.should have_tag("tr>td", "value for state".to_s, 2)
    response.should have_tag("tr>td", "value for zipcode".to_s, 2)
    response.should have_tag("tr>td", "value for county".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", "value for website".to_s, 2)
  end
end
