class CurrentLocation
  attr_reader :latitude,
              :longitude,
              :timestamp

  def initialize(location, timestamp)
    @latitude = location[:latitude]
    @longitude = location[:longitude]
    @timestamp = timestamp
  end
end
