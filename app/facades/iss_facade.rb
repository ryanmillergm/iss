class IssFacade
  def current_location
    iss_service.iss_current_location
  end

  def passover_time(lat, lon)
    iss_service.expected_iss_passover_time(lat, lon)
  end

  def astronauts
    iss_service.astronaut_list
  end

  def iss_service
    @iss ||= IssService.new
  end
end
