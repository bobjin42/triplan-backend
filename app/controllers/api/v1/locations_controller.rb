class Api::V1::LocationsController < ApplicationController
  # skip_before_action :authorized, only: [:index]

  def index
    @locations = Location.all
    render json: @locations
  end

end
