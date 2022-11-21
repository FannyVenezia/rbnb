class PlanetsController < ApplicationController
  before_action :set_planet, only: %i[show new create destroy]

  def index
    @planets = Planet.all
  end

  def show
  end

  def new
    @planet = Planet.new
  end

  def create
    if @planet.save
      redirect_to planet_path(@planet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @planet.destroy
    redirect_to planet_path(@planet), status: :see_other
  end

  private

  def set_planet
    @planet = planet.find(params[:restaurant_id])
  end

  def review_params
    params.require(:planet).permit(:name)
  end
end
