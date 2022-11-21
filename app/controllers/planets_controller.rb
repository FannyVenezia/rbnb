class PlanetsController < ApplicationController
  before_action :set_planet, only: %i[show edit update create destroy]

  def index
    @planets = Planet.all
  end

  def show
  end

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)

    if @planet.save
      redirect_to planet_path(@planet), notice: "Planet was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @planet.destroy
    redirect_to root_path, notice: "Planet was successfully destroyed."
  end

  def edit
  end

  def update
    if @planet.update(planet_params)
      redirect_to planet_path(@planet)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_planet
    @planet = planet.find(params[:id])
  end

  def planet_params
    params.require(:planet).permit(:name, :mass, :area, :solar_system, photos: [])
  end
end
