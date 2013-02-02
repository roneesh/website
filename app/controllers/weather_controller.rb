require 'open-uri'
require 'json'

class WeatherController < ApplicationController
  
  def weather
  	# @result = request.location.coordinates
  	# @city = request.location.city
  	# @country = request.location.country
  	# @longitude = request.location.longitude
  	# @latitude = request.location.latitude

  	if params[:city]
  		@city = params[:city]
  		city_for_string = params[:city]
  	else
  		@city = "Chicago"
  		city_for_string = "Chicago"
  	end

  	url_string = "http://api.wunderground.com/api/#{ENV["WEATHER_KEY"]}/forecast10day/q/CA/#{city_for_string}.json"
	json_result = open(url_string).read	
	@parsed_result = JSON.parse(json_result)
	@forecast = []

	@parsed_result["forecast"]["simpleforecast"]["forecastday"].each do |day_forecast|
		day = []
		day << day_forecast["date"]["weekday"]
		day << day_forecast["high"]["fahrenheit"]
		day << day_forecast["low"]["fahrenheit"]
		day << day_forecast["icon_url"]
		@forecast << day
		day = []
	end
  
  end

end
