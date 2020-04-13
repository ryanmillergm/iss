class IssService

  def iss_current_location
    fetch_data("/iss-now.json")
  end

  def expected_iss_passover_time(lat, long)
    fetch_data("/iss-pass.json?lat=45.0&lon=-122.3")
  end

  def astronaut_list
    fetch_data("/astros.json")
  end

  def fetch_data(parameters)
    response = conn.get(parameters)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "http://api.open-notify.org") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end
end
