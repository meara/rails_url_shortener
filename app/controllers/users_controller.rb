class UsersController < ApplicationController
  def new
    #view called new
    @user = User.new
  end

  def create
    #redirect or render
    @user = User.create(params[:user])
    if @user
      redirect_to('/')
    else
      render :new
    end
  end


end
