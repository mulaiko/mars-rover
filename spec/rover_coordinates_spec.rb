require File.expand_path('../../lib/zone', __FILE__)
require File.expand_path('../../lib/rover_coordinates', __FILE__)
require File.expand_path('../../lib/cardinal_directions', __FILE__)

describe RoverCoordinates do
  let(:zone) {Zone.new(8, 8)}
  let(:north) {CardinalDirections::North.new}
  let(:south) {CardinalDirections::South.new}
  let(:east) {CardinalDirections::East.new}
  let(:west) {CardinalDirections::West.new}
  subject { RoverCoordinates.new(1,2, zone) }

  describe ".set_coordinates" do

    it "increases the y coordinate when the current direction is north"do
      expect { subject.set_coordinates(north) }.to change{subject.y_coordinate}.from(2).to(3)
    end

    it "decreates the y coordinate when the current direction is south"do
      expect { subject.set_coordinates(south) }.to change{subject.y_coordinate}.from(2).to(1)
    end

    it "increases the x coordinate when the current direction is north"do
      expect { subject.set_coordinates(east) }.to change{subject.x_coordinate}.from(1).to(2)
    end

    it "decreases the x coordinate when the current direction is west"do
      expect { subject.set_coordinates(west) }.to change{subject.x_coordinate}.from(1).to(0)
    end
  end
end