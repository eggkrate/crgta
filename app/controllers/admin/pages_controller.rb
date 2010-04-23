class Admin::PagesController < ApplicationController
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
    @page = Page.create(params[:page])
    if @page.save
      flash[:notice] = "Page #{@page.title.titleize} created"
      redirect_to :back
    end
  end

  def update
    @page = Page.create(params[:page])
    if @page.save
      flash[:notice] = "Page #{@page.title.titleize} created"
      redirect_to :back
    end
  end

  def delete
    Page.destroy(params[:id])
    
  end

end
