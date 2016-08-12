module Api
  class LikesController < ApplicationController

    def create
      like = Like.new
      like.dish_id = params[:dish_id]
      like.save
      like_count = Dish.find(params[:dish_id]).likes.count
      # like_count = like.dish.likes.count
      render json: { like_count: like_count }
    end

  end
end