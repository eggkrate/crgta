class Page < ActiveRecord::Base
  
  validates_presence_of :title, :content

  has_friendly_id :title, :use_slug => true, :approximate_ascii => true
  
end
