class PagesController < ApplicationController

  def index
    @page = Page.find_by_title("Home Page")
  end

  def show
    @page = Page.find(params[:id])
    ensure_current_page_url
  end

  private
  def ensure_current_page_url
    redirect_to @page, :status => :moved_permanently unless @page.friendly_id_status.best?
  end
  
end
