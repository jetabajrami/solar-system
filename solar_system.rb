class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name  = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
    return @planets
  end

  def list_planets
    string = "Planets orbiting #{@star_name}\n"
    @planets.each_with_index do |planet, i|
      string = string  + "#{i+1}. #{planet.name}\n"
    end
    return string
  end

  def find_planet_by_name(string_input)
    string_input = string_input.capitalize
    @planets.each do |planet|
      if planet.name == string_input
        return planet
      end
    end
    return false
  end
end

