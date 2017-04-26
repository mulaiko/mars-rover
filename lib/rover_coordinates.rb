class RoverCoordinates

  attr_accessor :x_coordinate, :y_coordinate

  def initialize(x_coordinate, y_coordinate, zone)
   @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @zone = zone
    within_boundary?
  end

  def set_coordinates(current_direction)
    within_boundary?
    @y_coordinate += 1 if current_direction.instance_of?(CardinalDirections::North)
    @y_coordinate -= 1 if current_direction.instance_of?(CardinalDirections::South)
    @x_coordinate += 1 if current_direction.instance_of?(CardinalDirections::East)       
    @x_coordinate -= 1 if current_direction.instance_of?(CardinalDirections::West)
  end

  private

  attr_reader :zone

  def within_boundary?
    zone.within_boundary?(x_coordinate, y_coordinate)
  end
end