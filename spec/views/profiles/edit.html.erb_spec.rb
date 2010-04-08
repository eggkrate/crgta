require 'spec_helper'

describe "/profiles/edit.html.erb" do
  include ProfilesHelper

  before(:each) do
    assigns[:profile] = @profile = stub_model(Profile,
      :new_record? => false,
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

  it "renders the edit profile form" do
    render

    response.should have_tag("form[action=#{profile_path(@profile)}][method=post]") do
      with_tag('input#profile_name[name=?]', "profile[name]")
      with_tag('textarea#profile_description[name=?]', "profile[description]")
      with_tag('input#profile_contact[name=?]', "profile[contact]")
      with_tag('input#profile_email[name=?]', "profile[email]")
      with_tag('input#profile_industry[name=?]', "profile[industry]")
      with_tag('textarea#profile_services[name=?]', "profile[services]")
      with_tag('input#profile_street[name=?]', "profile[street]")
      with_tag('input#profile_street_2[name=?]', "profile[street_2]")
      with_tag('input#profile_city[name=?]', "profile[city]")
      with_tag('input#profile_state[name=?]', "profile[state]")
      with_tag('input#profile_zipcode[name=?]', "profile[zipcode]")
      with_tag('input#profile_county[name=?]', "profile[county]")
      with_tag('input#profile_phone[name=?]', "profile[phone]")
      with_tag('input#profile_website[name=?]', "profile[website]")
    end
  end
end
