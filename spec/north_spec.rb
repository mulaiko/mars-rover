require File.expand_path('../../lib/cardinal_directions', __FILE__)

describe CardinalDirections::North do
  
  describe ".turn_left" do
    it "returns an instance of CardinalDirections::West" do
      expect(subject.left).to be_an_instance_of(CardinalDirections::West)
    end
  end  

  describe ".turn_right" do
    it "returns an instance of CardinalDirections::East" do
      expect(subject.right).to be_an_instance_of(CardinalDirections::East)
    end
  end  

  describe ".to_s" do
    it "returns N" do
      expect(subject.to_s).to eq('N')
    end
  end  
end