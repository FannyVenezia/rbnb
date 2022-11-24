class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
    @planet = Planet.find(params[:planet_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @planet = Planet.find(params[:planet_id])
    @booking.planet = @planet

    if @booking.save
      redirect_to root_path, notice: "Your booking was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to root_path, notice: "Your booking was successfully deleted."
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to root_path, notice: "Your booking was successfully changed."
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
   params.require(:booking).permit(:planet_id, :user_id, :accepted, :start_date, :end_date, :number_of_visitors)
  end
end
