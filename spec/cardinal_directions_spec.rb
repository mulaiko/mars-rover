require File.expand_path('../../lib/cardinal_directions', __FILE__)

describe "CardinalDirections" do
  let(:dummy_class) { Class.new { include CardinalDirections }.new }

  describe '.initial_direction' do
    it 'returns and instance of CardinalDirections::East' do
      expect(dummy_class.initial_direction('E')).to be_an_instance_of(CardinalDirections::East)
    end

    it 'returns and instance of CardinalDirections::South' do
      expect(dummy_class.initial_direction('S')).to be_an_instance_of(CardinalDirections::South)
    end

    it 'returns and instance of CardinalDirections::East' do
      expect(dummy_class.initial_direction('E')).to be_an_instance_of(CardinalDirections::East)
    end

    it 'returns and instance of CardinalDirections::West' do
      expect(dummy_class.initial_direction('W')).to be_an_instance_of(CardinalDirections::West)
    end
  end
end