class IssController < ApplicationController
  def home
    iss = IssFacade.new
    @current_location = iss.current_location
    @time = Time.at(@current_location[:timestamp])
    passover_params[:latitude] && passover_params[:longitude] ? @passover_time = iss.passover_time(passover_params[:latitude], passover_params[:longitude]) : @passover_time = iss.passover_time(lat = 45.0, lon = 122.3)
    @rise_time = Time.at(@passover_time[:response].first[:risetime])
    @astronauts = iss.astronauts[:people]
  end

  private

  def passover_params
    params.permit(:latitude, :longitude)
  end
end
