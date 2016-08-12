module Api
  class DishesController < ApplicationController

    def index
      @dishes = Dish.all
      render json: @dishes
    end

    def create
      @dish = Dish.new
      @dish.name = params[:name]
      @dish.image_url = params[:image_url]
      @dish.save
      render json: @dish
    end

    def destroy
      @dish = Dish.find(params[:id])
      @dish.destroy
      render json: @dish
    end

  end
end