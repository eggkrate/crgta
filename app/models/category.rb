class Category < ActiveRecord::Base
  has_many :pages
#  has_friendly_id :name, :use_slug => true, :approximate_ascii => true

end
