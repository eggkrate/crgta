class NewsItem < ActiveRecord::Base
  validates_presence_of :title, :content, :date
  before_validation :set_date
  has_friendly_id :title, :use_slug => true, :approximate_ascii => true, :max_length => 50

  def set_date
    self.date = Time.now if not attribute_present?("date")
  end
end
