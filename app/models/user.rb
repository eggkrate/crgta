class User < ActiveRecord::Base
  has_one :profile
  acts_as_authentic
  
  accepts_nested_attributes_for :profile
  validates_presence_of :profile
  
#  has_friendly_id :get_name, :use_slug => true, :approximate_ascii => true
  
  def get_name
    profile.name ? profile.name : profile.contact
  end
  
end
