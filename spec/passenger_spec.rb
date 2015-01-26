require 'passenger'

describe 'Passenger' do

  let(:passenger){Passenger.new}
  let(:station){double :station}

  it 'should have a balance of 20 pounds' do
    expect(passenger.balance).to eq 20
  end

  it 'should tap into the station' do
    expect(station).to receive(:accept).with(passenger)
    passenger.tap_in(station)
  end

  it 'should be able to tap out of station' do
    expect(station).to receive(:expel).with(passenger)
    passenger.tap_out(station)
  end

  it 'should deduct two pounds from balance when tapped in' do
    allow(station).to receive(:accept).with(passenger)
    passenger.tap_in(station)
    expect(passenger.balance).to eq 18
  end

  it 'should not be able to tap in if balance is less than 2' do
    allow(station).to receive(:accept).with(passenger)
    10.times{passenger.tap_in(station)}
    expect(lambda{passenger.tap_in(station)}).to raise_error 'Insufficent funds!'
  end

end
