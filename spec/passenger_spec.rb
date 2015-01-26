require 'passenger'

describe 'Passenger' do

  let(:passenger){Passenger.new}
  let(:station){double :station}

  it 'should have a balance of 10 pounds' do
    expect(passenger.balance).to eq 10
  end

  it 'should tap into the station' do
    expect(station).to receive(:accept).with(passenger)
    passenger.tap_in(station)
  end

  it 'should deduct two pounds from balance when tapped in' do
    allow(station).to receive(:accept).with(passenger)
    passenger.tap_in(station)
    expect(passenger.balance).to eq 8
  end
end
