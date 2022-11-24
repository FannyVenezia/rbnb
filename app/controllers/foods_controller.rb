class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    @food.save!
    redirect_to foods_path
  end


  private

  def food_params
    params.require(:food).permit(:name)
  end
end
