require 'train'

describe 'Train' do

  let(:train){Train.new}
  let(:coach){double :coach}
  let(:station){double :station}

  it 'should be able to load 3 coaches' do
    3.times{train.add(coach)}
    expect(train.coaches_count).to eq 3
  end
end
