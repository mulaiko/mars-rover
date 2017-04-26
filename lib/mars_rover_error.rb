module MarsRoverError
	class Boundary < StandardError
		def message
			"Error: Rover can not move beyond the Zone boundary. Please supply data that keeps Rover within the boundary." 
		end
	end

	class InvalidInput < StandardError
		def message
			"Error: An invalid data was entered." 
		end
	end
end
