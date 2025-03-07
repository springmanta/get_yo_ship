class BookingsController < ApplicationController
  before_action :set_spaceship, only: [:new, :create]
  before_action :authenticate_user!

  def index
    @bookings = current_user.bookings.includes(:spaceship)
  end

  def new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.spaceship = @spaceship
    @booking.user = current_user

    if @booking.save
      redirect_to spaceship_booking_path(@spaceship)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_spaceship
    @spaceship = Spaceship.find(params[:spaceship_id])
  end

  def booking_params
    params.require(:booking).permit(:date)
  end

end
