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
      redirect_to booking_path(@booking), notice: "Get Yo Ship Confirmed!"
    else
      render "spaceships/show", status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def set_spaceship
    @spaceship = Spaceship.find(params[:spaceship_id])
  end

  def booking_params
    params.require(:booking).permit(:booking_date, :guests, :spaceship_id)
  end
end
