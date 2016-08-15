class DishesController < ApplicationController
  def index
    @dishes = Dish.all
  end

  def show
    @dish = Dish.find(params[:id])
    # render :show
  end

  def new
  end

  def create
    @dish = Dish.new
    @dish.name = params[:name]
    @dish.image_url = params[:image_url]

    if @dish.save # im handing error
      redirect_to '/dishes'
    else
      render :new
    end 
  end

  def destroy
    @dish = Dish.find(params[:id])
    # @dish.likes.destroy_all
    # @dish.comments.destroy_all
    @dish.destroy

    redirect_to '/dishes'
  end

end
