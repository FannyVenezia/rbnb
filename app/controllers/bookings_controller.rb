class BookingsController < ApplicationController
  before_action :set_booking, only: %i[create destroy]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to planet_path(@booking), notice: "Your booking was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to root_path, notice: "Your booking was successfully deleted."
  end

  private

  def set_booking
    @booking = booking.find(params[:id])
  end

  def booking_params
   params.require(:booking).permit(:planet_id, :user_id)
  end
end
