class BookingsController < ApplicationController
  before_action :set_booking, only: %i[create destroy]

  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    authorize @booking
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.planet = @planet
    @planet = Planet.find(params[:planet_id])

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
    authorize @booking
  end

  def update
    authorize @booking
    if @booking.update(booking_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
   params.require(:booking).permit(:planet_id, :user_id, :accepted, :start_date, :end_date, :number_of_visitors)
  end
end
