class BookingsController < ApplicationController
  before_action :set_spaceship, only: [:new, :create]

  def new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.spaceship = @spaceship
    @booking.user = current_user

    if @booking.save
      redirect_to booking_path(@booking), notice: "Get Yo Ship Confirmed!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # chatGPT version:

  # def create
  #   raise
  #   @booking = Booking.new(booking_params)
  #   @booking.user = current_user


  #   if @booking.guests > @spaceship.capacity
  #     flash[:alert] = "You cannot exceed the ship's capacity of #{@spaceship.capacity} guests."
  #     render "spaceships/show", status: :unprocessable_entity
  #   elsif @booking.save
  #     redirect_to booking_path(@booking), notice: "Booking successful!"
  #   else
  #     render "spaceships/show", status: :unprocessable_entity
  #   end
  # end

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
