require 'station'

describe 'Station' do

 let(:station){Station.new}
 let(:passenger){double :passenger}
 let(:train){double :train}

  it 'should have a capacity of 8 trains' do
    expect(station.capacity).to eq 8
  end

  it 'should know when a passenger taps in' do
    allow(passenger).to receive(:tap_in).with(station)
    station.accept(passenger)
    expect(station.passenger_count).to eq 1
  end

  it 'should know when a train arrives' do
    station.receive(train)
    expect(station.train_count).to eq 1
  end

  it 'should know when its full' do
    8.times{station.receive(train)}
    expect(station.full?).to eq true
  end

  it 'should not let train in if it is full' do
    8.times{station.receive(train)}
    expect(lambda{station.receive(train)}).to raise_error 'Station is full'
  end
end
