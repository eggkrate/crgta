# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

require 'faker'
%w(skamania klickitat sherman wasco).each do |c|
  County.create(:name => "#{c}".titleize)
end
County.create(:name => "hood river".titleize)

%w(about_gta news join directory business_support projects meetings resources).each do |c|
  Category.create(:name => "#{c}".titleize)
end

Page.create(:title => "Home Page", :content => "This is the index page")

%w(contact_us mission_and_vision).each do |c|
  Page.create(:title => "#{c}".titleize, :content => Faker::Lorem.paragraphs(rand(10) + 2).join(' '), :category_id => 1)
end

%w(benefits_and_services become_a_member).each do |c|
  Page.create(:title => "#{c}".titleize, :content => Faker::Lorem.paragraphs(rand(10) + 2).join(' '), :category_id => 3)
end

5.times do |time|
  NewsItem.create(:title => Faker::Lorem.sentence, :content => Faker::Lorem.paragraphs.join(' '), :date => time.days.ago)
end

50.times do |time|
  User.create(:email => Faker::Internet.email, :password => "pass#{time}", :password_confirmation => "pass#{time}",
              :profile_attributes => {
                :name => Faker::Company.name,
                :description => Faker::Lorem.paragraph,
                :contact => Faker::Name.name,
                :email => Faker::Internet.email,
                :industry => Faker::Lorem.words(1)[0],
                :services => Faker::Lorem.sentence,
                :street => Faker::Address.street_address,
                :city => Faker::Address.city,
                :state => Faker::Address.us_state,
                :zipcode => Faker::Address.zip_code,
                :county => County.all.rand,
                :website => "http://" + Faker::Internet.domain_name                
              })
end