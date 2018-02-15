class DirectionsController < ApplicationController
  def index
    change_position("direction")
    @direction = Direction.last
  end
end
