require "http"

response = HTTP.get("api.openweathermap.org/data/2.5/weather?q=London&appid={API key}")  # need to replace {API key} with my API key

weather_data = response.parse(:json)

temperature = weather_data["main"]["temp"] # description = weather_data

puts "Today in Chicago, it is #{temperature} degrees outside with DESC"
