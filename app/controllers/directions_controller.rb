class DirectionsController < ApplicationController
  def index
    change_position("direction")
  end
end
