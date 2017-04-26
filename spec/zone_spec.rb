require File.expand_path('../../lib/rover', __FILE__)
require File.expand_path('../../lib/zone', __FILE__)
require File.expand_path('../../lib/rover_coordinates', __FILE__)
require File.expand_path('../../lib/cardinal_directions', __FILE__)

describe "Zone" do
  subject {Zone.new(8, 8)}
  let (:coordinate) {RoverCoordinates.new(1,2, subject)}  

  describe ".within_boundary" do
  	it "checks if coordinates are within bounds" do
    	expect(subject.within_boundary?(coordinate.x_coordinate,coordinate.y_coordinate)).to be true
  	end

    it "raises an error for point out of upper x bound" do
      expect{ subject.within_boundary?(11, 2)}.to(raise_error(MarsRoverError::Boundary))
    end

    it "raises an error for point out of lower x bound" do
      expect{ subject.within_boundary?(-1, 2)}.to(raise_error(MarsRoverError::Boundary))
    end

    it "raises an error for point out of upper y bound" do
      expect{ subject.within_boundary?(1, 12)}.to(raise_error(MarsRoverError::Boundary))
    end

    it "raises an error for point out of lower y bound" do
      expect{ subject.within_boundary?(1, -1)}.to(raise_error(MarsRoverError::Boundary))
    end
  end
end