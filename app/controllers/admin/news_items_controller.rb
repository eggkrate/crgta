class Admin::NewsItemsController < Admin::ApplicationController
  before_filter :login_required
  uses_tiny_mce
  
  def index
    @items = NewsItem.all
  end

  def show
    @item = NewsItem.find(params[:id])
  end

  def new
    @item = NewsItem.new
  end

  # GET /items/1/edit
  def edit
    @item = NewsItem.find(params[:id])
  end

  def create
    @item = NewsItem.new(params[:news_item])
    if @item.save
      flash[:notice] = "News Item #{@item.title.titleize} created"
      redirect_to @item
    end
  end

  def update
    @item = NewsItem.find(params[:id])
    if @item.update_attributes(params[:news_item])
      flash[:notice] = "News Item Updated"
      redirect_to @item
    else
      flash[:notice] = "Can't create item"
      redirect_to @item
    end
  end

  def delete
    NewsItem.destroy(params[:id])
    
  end

end
