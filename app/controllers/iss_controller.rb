class IssController < ApplicationController
  def home

    @conn = Faraday.new(url: "http://api.open-notify.org") do |faraday|
      faraday.adapter Faraday.default_adapter
    end

    current_location = @conn.get("/iss-now.json")
    current_location_results = JSON.parse(current_location.body, symbolize_names: true)

    passover_time = @conn.get("/iss-pass.json?lat=45.0&lon=-122.3")
    passover_time_results = JSON.parse(passover_time.body, symbolize_names: true)

    astronauts = @conn.get("/astros.json")
    astronauts_results = JSON.parse(astronauts.body, symbolize_names: true)
  end
end
