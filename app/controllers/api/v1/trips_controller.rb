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
    city_code = (Code.all.find { |city| city["city_name"].gsub(/[^a-zA-Z]/, '').downcase.include? params[:trip][:trip_title].gsub(/[^a-zA-Z]/, '').downcase}).city_code
    @city = City.find_by(city_code: city_code)
    if !@city
      city_url =
    "https://api.sygictravelapi.com/1.1/en/places/#{city_code}"
    response = HTTParty.get(city_url, :headers => { "Content-Type" => "application/json", "x-api-key" => Rails.application.credentials.api})
    @info = response["data"]["place"]
    @img = @info["main_media"]["media"][0]["url"]
    @wikipedia = @info["references"].find{|reference| reference["title"] == "Wikipedia"} || {url: ""}
    @website = @info["references"].find{|reference| reference["title"] == "Official Website"} || {url: ""}
    @subway_map = @info["references"].find{|reference| reference["title"] == "Subway Map"} || {url: ""}
    @guide = @info["references"].find{|reference| reference["type"] == "guide"} || {url: ""}
    @city = City.create(city_code: @info["id"], name: @info["name"], description: @info["description"]["text"], wikipedia: @wikipedia["url"], website: @website["url"], guide: @guide["url"], subway_map: @subway_map["url"], img: @img)
  end

    if Location.all.find {|location| location[:name_suffix].split(",")[0].gsub(/[^a-zA-Z]/, '').downcase.include? (params[:trip][:trip_title].gsub(/[^a-zA-Z]/, '').downcase)}
      @locations = Location.all.find_all {|location| location[:name_suffix].split(",")[0].gsub(/[^a-zA-Z]/, '').downcase.include? (params[:trip][:trip_title].gsub(/[^a-zA-Z]/, '').downcase)}
      render json: @locations
    else
      city_code = (Code.all.find { |city| city["city_name"].gsub(/[^a-zA-Z]/, '').downcase.include? params[:trip][:trip_title].gsub(/[^a-zA-Z]/, '').downcase}).city_code
      url = "https://api.sygictravelapi.com/1.1/en/places/list?parents=#{city_code}&level=poi&limit=100"
      response = HTTParty.get(url, :headers => { "Content-Type" => "application/json", "x-api-key" => Rails.application.credentials.api})
      response["data"]["places"].each do |location|
        Location.create(api_id: location["id"], lat: location["location"]["lat"], lng: location["location"]["lng"], name: location["name"], name_suffix: location["name_suffix"], url: location["url"], categories: location["categories"], perex: location["perex"], thumbnail_url: location["thumbnail_url"], rating: location["rating"], city_id: @city.id)
      end
      @locations = Location.all.find_all {|location| location[:name_suffix].split(",")[0].gsub(/[^a-zA-Z]/, '').downcase.include? (params[:trip][:trip_title].gsub(/[^a-zA-Z]/, '').downcase)}
      render json: @locations
    end
  end

  private
  def trip_params
    params.require(:trip).permit(:user_id, :start_date, :end_date, :trip_title)
  end

end
