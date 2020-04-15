class PassoverTime
  attr_reader :duration, :rise_time

  def initialize(passover)
    @duration = passover[:duration]
    @rise_time = passover[:risetime]
  end
end
