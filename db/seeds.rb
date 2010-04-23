# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

require 'faker'
=begin
%w(skamania klickitat sherman wasco).each do |c|
  County.create(:name => "#{c}".titleize)
end
County.create(:name => "hood river".titleize)

%w(about_gta news join directory business_support projects meetings resources).each do |c|
  Category.create(:name => "#{c}".titleize)
end
=end
%w(contact_us mission_and_vision).each do |c|
  Page.create(:title => "#{c}".titleize, :content => Faker::Lorem.sentences(20).join(' '), :category_id => 1)
end

%w(latest_news news).each do |c|
  Page.create(:title => "#{c}".titleize, :content => Faker::Lorem.sentences(20).join(' '), :category_id => 2)
end