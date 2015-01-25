require 'station'

describe 'Station' do

 let(:station){Station.new}
 let(:passenger){double :passenger}

  it 'should have a capacity of 8 trains' do
    expect(station.capacity).to eq 8
  end

  it 'should know when a passenger taps in' do
    allow(passenger).to receive(:tap_in).with(station)
    station.accept(passenger)
    expect(station.passenger_count).to eq 1
  end
end
