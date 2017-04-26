require './lib/rover_coordinates'
require './lib/zone'
require './lib/rover'

file = File.readlines("input.txt")
max_x = file[0].chomp.split(" ")[0].to_i
max_y = file[0].chomp.split(" ")[1].to_i
coords = file[1].chomp.split(" ") 
begin
coordinate = RoverCoordinates.new(coords[0].to_i, coords[1].to_i, Zone.new(max_x, max_y))	
rescue MarsRoverError::Boundary => e
	puts e.message  
	exit
end


direction =  file[1].chomp.split(" ")[2]
rover = Rover.new(coordinate, direction)
rover.navigate(file[2].chomp)
puts rover.display_location