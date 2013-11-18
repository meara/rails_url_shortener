class SessionsController < ApplicationController
  def new

  end

  def create
    #redirect or render
    if success
    else
      render :new
    end
  end

  def destroy
    #redirect or render
  end

end
