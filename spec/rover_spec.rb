require File.expand_path('../../lib/rover', __FILE__)
require File.expand_path('../../lib/zone', __FILE__)
require File.expand_path('../../lib/rover_coordinates', __FILE__)
require File.expand_path('../../lib/cardinal_directions', __FILE__)

describe "Rover" do
  let (:input) { File.readlines("test_input.txt") }
  let(:zone) {Zone.new(8, 8)}
  let(:commands) {"MMLMRMMRRMML"}
  let (:coordinate) {RoverCoordinates.new(1,2, zone)}
  subject {Rover.new(coordinate, 'E')}

  describe ".turn_left" do
  	it "turns left" do
    	expect(subject.turn_left.to_s).to eq('N')
  	end
  end

  describe ".turn_right" do
  	it "turns right" do
    	expect(subject.turn_right.to_s).to eq('S')
  	end
  end

  describe ".move" do
  	it "moves along the x axis" do
    	expect { subject.move }.to change{subject.x_coordinate}.by(1)
  	end

    it "moves along the y axis" do
      subject.current_direction = CardinalDirections::North.new
      expect { subject.move }.to change{subject.y_coordinate}.by(1)
    end
  end

  describe ".display_location" do
  	it "displays location" do
  		subject.navigate(commands)
    	expect(subject.display_location).to eq('3 3 S')
  	end
  end

  describe ".perform_action" do
  	it "raises an error for invalid input" do
  	  expect{ subject.perform_action(["M","I"]) }.to raise_error MarsRoverError::InvalidInput
    end
  end

  describe "#new" do
  	it "raises an error for invalid input on initialization" do
  	  expect{ Rover.new(coordinate, 'NN') }.to raise_error MarsRoverError::InvalidInput
    end
  end
end