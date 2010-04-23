require 'spec_helper'

describe "/admin/news_items/delete" do
  before(:each) do
    render 'admin/news_items/delete'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/admin/news_items/delete])
  end
end
