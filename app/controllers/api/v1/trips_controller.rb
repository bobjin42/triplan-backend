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
    if Location.all.find {|location| location[:name_suffix].split(",")[0].tr('^A-Za-z', '').downcase.include? (params[:trip][:trip_title].tr('^A-Za-z', '').downcase)}
      @locations = Location.all.find_all {|location| location[:name_suffix].split(",")[0].tr('^A-Za-z', '').downcase.include? (params[:trip][:trip_title].tr('^A-Za-z', '').downcase)}
      render json: @locations
    else
      cityCode = (Code.all.find { |city| city["city_name"].tr('^A-Za-z', '').downcase == params[:trip][:trip_title].tr('^A-Za-z', '').downcase} || Code.all.find { |city| city["city_name"].tr('^A-Za-z', '').downcase.include? params[:trip][:trip_title].tr('^A-Za-z', '').downcase}).city_code
      url = "https://api.sygictravelapi.com/1.1/en/places/list?parents=#{cityCode}&level=poi&limit=100"
      response = HTTParty.get(url, :headers => { "Content-Type" => "application/json", "x-api-key" => Rails.application.credentials.api})
      response["data"]["places"].each do |location|
        Location.create(api_id: location["id"], lat: location["location"]["lat"], lng: location["location"]["lng"], name: location["name"], name_suffix: location["name_suffix"], url: location["url"], categories: location["categories"], perex: location["perex"], thumbnail_url: location["thumbnail_url"], rating: location["rating"])
      end
      @locations = Location.all.find_all {|location| location[:name_suffix].split(",")[0].tr('^A-Za-z', '').downcase.include? (params[:trip][:trip_title]..tr('^A-Za-z', '').downcase)}
      render json: @locations
    end
  end

  private
  def trip_params
    params.require(:trip).permit(:user_id, :start_date, :end_date, :trip_title)
  end

end
