class SpaceshipsController < ApplicationController
  def index
    if params[:query].present?
      @spaceships = Spaceship.search_by_details(params[:query])
    else
      @spaceships = Spaceship.all
    end

    if params[:start_date].present? && params[:end_date].present?
      start_date = Date.parse(params[:start_date])
      end_date = Date.parse(params[:end_date])
      @spaceships = @spaceships.includes(:availabilities).select do |spaceship|
        spaceship.availabilities.any? do |availability|
          availability.start_date <= end_date && availability.end_date >= start_date
        end
      end
    end
  end

  def show
    @spaceship = Spaceship.find(params[:id])
    @booking = Booking.new
  end
end
