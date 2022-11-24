class PlanetsController < ApplicationController
  before_action :set_planet, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @planets = Planet.all
    if params[:query].present?
      @planets = Planet.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @planets = Planet.all
    end
  end

  def show
    authorize @planet
  end

  def thanks
    @planets = Planet.all
  end

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.user = current_user
    if @planet.save
      redirect_to planet_path(@planet), notice: "Planet was successfully created."
    else
      redirect_to root_path
    end
  end

  def destroy
    authorize @planet
    @planet.destroy
    redirect_to planets_path, notice: "Planet was successfully destroyed."
  end

  def edit
    authorize @planet
  end

  def update
    authorize @planet
    if @planet.update(planet_params)
      redirect_to planet_path(@planet), notice: "Your planet was successfully changed."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_planet
    @planet = Planet.find(params[:id])
  end

  def planet_params
    params.require(:planet).permit(:name, :mass, :area, :solar_system, photos: [])
  end
end
