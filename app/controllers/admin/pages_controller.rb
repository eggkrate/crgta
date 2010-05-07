class Admin::PagesController < ApplicationController
  #before_filter :login_required
  uses_tiny_mce
  
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end
  
  def create
    @page = Page.new(params[:page])
    if @page.save
      flash[:notice] = "Page #{@page.title.titleize} created"
      redirect_to @page
    end
  end

  # GET /pages/1/edit
  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(params[:page])
      flash[:notice] = "Page updated!"
      redirect_to @page
    else
      flash[:notice] = "Can't update page"
      redirect_to @page
    end
  end

  def delete
    Page.destroy(params[:id])
    
  end

end
