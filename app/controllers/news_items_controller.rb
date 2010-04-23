class NewsItemsController < ApplicationController

  def index
    @items = NewsItem.all
  end

  def show
    @item = NewsItem.find(params[:id])
  end

end
