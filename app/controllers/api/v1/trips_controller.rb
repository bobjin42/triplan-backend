# require 'rubygems'
# require 'httparty'
# require './citiescode.rb'

class Api::V1::TripsController < ApplicationController
  # skip_before_action :authorized, only: [:create, :index]

  def index
    @trips = Trip.all
    render json: @trips
  end

  def create
    @trip =  Trip.create(trip_params)
    # byebug
    # cityObj = Allcode.get_city_code.find { |city| city[:name].downcase.split(" ").join("") == @trip[:trip_title].downcase.split(" ").join("")}
    # response = HTTParty.get(`https://api.sygictravelapi.com/1.1/en/places/list?parents=#{cityObj[:id]}&level=poi&limit=100`,
    # :header => {"x-api-key" => Rails.application.secrets.secret})
    #
    # response.each do |location|
    #   Location.create(api_id: location["id"], lat: location["location"]["lat"], lng: location["location"]["lng"], name: location["name"], name_suffix: location["name_suffix"], url: location["url"], categories: location["categories"], perex: location["perex"], thumbnail_url: location["thumbnail_url"], rating: location["rating"])
    # end

    render json: @trip
  end

  private
  def trip_params
    params.require(:trip).permit(:user_id, :start_date, :end_date, :trip_title)
  end

end
