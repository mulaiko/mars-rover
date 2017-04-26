require_relative 'mars_rover_error'

class Zone
 

  def initialize(max_x_coordinate, max_y_coordinate)		
    @max_x_coordinate = max_x_coordinate  
    @max_y_coordinate = max_y_coordinate
  end

  def within_boundary?(x_coordinate,y_coordinate)		
    raise MarsRoverError::Boundary unless max_x_coordinate >= x_coordinate
    raise MarsRoverError::Boundary unless max_y_coordinate >= y_coordinate
    raise MarsRoverError::Boundary unless x_coordinate >= 0
    raise MarsRoverError::Boundary unless y_coordinate >= 0
    true 	 
  end

  private
  attr_accessor :max_x_coordinate, :max_y_coordinate
end