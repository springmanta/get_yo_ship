class SpaceshipsController < ApplicationController
  def index
    if params[:query].present?
      @spaceships = Spaceship.search_by_details(params[:query])
    else
      @spaceships = Spaceship.all
    end
  end

  def show
    @spaceship = Spaceship.find(params[:id])
  end
end
