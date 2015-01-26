require 'train'

describe 'Train' do

  let(:train){Train.new}
  let(:coach){double :coach}
  let(:station){double :station}

  it 'should be able to load 3 coaches' do
    3.times{train.add(coach)}
    expect(train.coaches_count).to eq 3
  end

  it 'should be able to enter station' do
    expect(station).to receive(:receive).with(train)
    train.enter(station)
  end

  it 'should be able to leave station' do
    expect(station).to receive(:disembark).with(train)
    train.leave(station)
  end
  
end
