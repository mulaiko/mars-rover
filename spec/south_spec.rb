require File.expand_path('../../lib/cardinal_directions', __FILE__)

describe CardinalDirections::South do
  
   describe ".turn_left" do
    it "returns an instance of CardinalDirections::East" do
      expect(subject.left).to be_an_instance_of(CardinalDirections::East)
    end
  end  

  describe ".turn_right" do
    it "returns an instance of CardinalDirections::West" do
      expect(subject.right).to be_an_instance_of(CardinalDirections::West)
    end
  end  

  describe ".to_s" do
    it "returns S" do
      expect(subject.to_s).to eq('S')
    end
  end  
end