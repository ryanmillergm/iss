class Astronaut
  attr_reader :name, :craft

  def initialize(astronaut)
    @name = astronaut[:name]
    @craft = astronaut[:craft]
  end
end
