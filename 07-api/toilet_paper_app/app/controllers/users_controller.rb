class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to '/users'
  end

end
