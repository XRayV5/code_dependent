class LikesController < ApplicationController

  def create
    like = Like.new
    like.dish_id = params[:dish_id]
    like.save
    redirect_to '/dishes'
  end
end
