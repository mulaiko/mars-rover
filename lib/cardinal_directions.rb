module CardinalDirections

def initial_direction(direction)
	return North.new if direction == "N"
	return South.new if direction == "S"
	return East.new if direction == "E"
	return West.new if direction == "W"
	raise MarsRoverError::InvalidInput
end

class North

  def left
		West.new
	end

	def right
		East.new
	end

	def to_s
		"N"
	end
end

class South

	def left
		East.new
	end

	def right
		West.new
	end

	def to_s
		"S"
	end
end

class East

	def left
	  North.new
	end

	def right
		South.new
	end

	def to_s
		"E"
	end
end

class West

	def left
		South.new
	end

	def right
		North.new
	end

	def to_s
		"W"
	end
end
end
