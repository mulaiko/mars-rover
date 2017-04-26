require File.expand_path('../../lib/cardinal_directions', __FILE__)

describe CardinalDirections::East do
  
  describe ".turn_left" do
    it "returns an instance of CardinalDirections::North" do
      expect(subject.left).to be_an_instance_of(CardinalDirections::North)
    end
  end  

  describe ".turn_right" do
    it "returns an instance of CardinalDirections::South" do
      expect(subject.right).to be_an_instance_of(CardinalDirections::South)
    end
  end  

  describe ".to_s" do
    it "returns E" do
      expect(subject.to_s).to eq('E')
    end
  end  
end