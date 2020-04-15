class IssFacade
  def current_location
    iss_current_location_data = iss_service.iss_current_location
    CurrentLocation.new(iss_current_location_data[:iss_position], iss_current_location_data[:timestamp])
  end

  def passover_time(lat, lon)
    passover_data = iss_service.expected_iss_passover_time(lat, lon)[:response].first
    PassoverTime.new(passover_data)
  end

  def astronauts
    astronaut_data = iss_service.astronaut_list
    astronaut_data[:people].map do |astronaut|
      Astronaut.new(astronaut)
    end
  end

  private

  def iss_service
    @iss ||= IssService.new
  end
end
