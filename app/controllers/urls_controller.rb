class UrlsController < ApplicationController
  def index
   #render new url form and show all links
   @urls = Url.all
   @url = Url.new
  end

  def create
    #redirect or render
    @url = Url.create(params[:url], user_id: 1)
    if @url
      redirect_to('/')
    else
      render :index
    end
  end

  def update
    #update the url table entry
    #redirect to that url.long_url
    @url = Url.find_by_id(params[:id])
  #increment the counter
    Url.increment_counter(:click_count, @url.id)
    redirect_to(@url.long_url)
  end

end
