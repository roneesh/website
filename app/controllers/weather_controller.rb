require 'open-uri'
require 'json'

class WeatherController < ApplicationController
  
  def weather
  	# @result = request.location.coordinates
  	# @city = request.location.city
  	# @country = request.location.country
  	# @longitude = request.location.longitude
  	# @latitude = request.location.latitude

	json_result = open("http://api.wunderground.com/api/#{ENV["WEATHER_KEY"]}/forecast10day/q/CA/Chicago.json").read	
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
