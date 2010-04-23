class NewsItem < ActiveRecord::Base

  has_friendly_id :title, :use_slug => true, :approximate_ascii => true, :max_length => 50
  
end
