class PagesController < ApplicationController

  def index
    @index = Page.find_by_title("Home Page")
    @pages = Page.all
    @news = NewsItem.all
    @users = User.all
  end

  def show
    @page = Page.find(params[:id])
  end
  
end
