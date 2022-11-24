class PlanetsController < ApplicationController
  before_action :set_planet, only: %i[show edit update create destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @planets = policy_scope(Planet)
  end

  def show
    authorize @planet
  end

  def recap
    @planet = Planet.new
    authorize @planet
  end

  def new
    @planet = Planet.new
    @planet.user = current_user
    authorize @planet
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.user = current_user
    authorize @planet
    @planet.save
    redirect_to planets_path(@planet), notice: "Planet was successfully created."
  end

  def destroy
    authorize @planet
    @planet.destroy
    redirect_to planets_path(@planet), notice: "Planet was successfully destroyed."
  end

  def edit
    authorize @planet
  end

  def update
    authorize @planet
    if @planet.update(planet_params)
      redirect_to planet_path(@planet)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_planet
    @planet = Planet.find(params[:id])
  end

  def planet_params
    params.require(:planet).permit(:name, :mass, :area, :solar_system, :user, photos: [])
  end
end
