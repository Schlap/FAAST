require 'coaches'

describe 'coaches' do

  let(:coach){Coach.new}
  let(:passenger){double :passenger}

  it 'should have zero passengers on initialization' do
    expect(coach.passenger_count).to eq 0
  end

  it 'should be able to board a passenger' do
    coach.board(passenger)
    expect(coach.passenger_count).to eq 1
  end

  it 'should be able to remove a passenger' do
    coach.board(passenger)
    coach.remove(passenger)
    expect(coach.passenger_count).to eq 0
  end

  it 'should have a capacity of 50 passengers per coach' do
    expect(coach.capacity).to eq 50
  end

  it 'should know when it has reached full capacity' do
    50.times{coach.board(passenger)}
    expect(coach.full?).to eq true
  end
end
