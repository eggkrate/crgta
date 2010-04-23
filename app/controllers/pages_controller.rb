class PagesController < ApplicationController

  def index
    @page = Page.find_by_slug("index")
  end

  def show
    @page = Page.find_by_slug(params[:slug])
  end

end
