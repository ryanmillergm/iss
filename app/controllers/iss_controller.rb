class IssController < ApplicationController
  def home
    @iss = IssFacade.new
    @current_location = @iss.current_location
    @passover_time = set_passover
    @astronauts = @iss.astronauts
    @time = Time.at(@current_location.timestamp)
    @rise_time = Time.at(@passover_time.rise_time)
  end

  private

  def passover_params
    params.permit(:latitude, :longitude)
  end

  def set_passover
    if passover_params[:latitude] && passover_params[:longitude]
      @iss.passover_time(passover_params[:latitude], passover_params[:longitude])
    else
      @iss.passover_time(lat = 45.0, lon = 122.3)
    end
  end
end
