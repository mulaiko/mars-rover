require_relative 'cardinal_directions'
require_relative 'mars_rover_error'
require_relative 'rover_coordinates'

class Rover
	include CardinalDirections

	attr_accessor :coordinate, :current_direction

	def initialize(coordinate, direction)
		@coordinate = coordinate
		@current_direction = initial_direction(direction)		
	end

	def navigate(commands)
		begin
			perform_action(commands.chars)
		rescue MarsRoverError::InvalidInput => e
	  	puts e.message  
	  	exit
	  end	  
	end

	def perform_action(commands_array)	
		commands_array.each do |command|
			if command == "M"
			begin
					move
			  rescue MarsRoverError::Boundary => e
			  	puts e.message  
			  	exit
			  end
			elsif command == "L"
				turn_left
			elsif command == "R"
				turn_right					
			else
				raise MarsRoverError::InvalidInput
			end
		end
	end

	def turn_left
		self.current_direction = self.current_direction.left
	end 

	def turn_right
		self.current_direction = self.current_direction.right
	end 

	def x_coordinate
		coordinate.x_coordinate
	end

	def y_coordinate
		coordinate.y_coordinate
	end

	def display_location		
		"#{x_coordinate} #{y_coordinate} #{current_direction}"
	end

	def move
		@coordinate.set_coordinates(@current_direction)
	end
end