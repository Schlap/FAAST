require 'passenger'

describe 'Passenger' do

  let(:passenger){Passenger.new}
  let(:station){double :station}

  it 'should hava a balance of 10 pounds' do
    expect(passenger.balance).to eq 10
  end

  it 'should tap into the station' do
    passenger.tap_in(station)
    allow(station).to receive(:passenger_count).and_return(1)
  end
  
  it 'should deduct two pounds from balance when tapped in' do
    passenger.tap_in(station)
    expect(passenger.balance).to eq 8
  end
end
