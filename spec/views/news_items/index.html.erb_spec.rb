require 'spec_helper'

describe "/news_items/index" do
  before(:each) do
    render 'news_items/index'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/news_items/index])
  end
end
