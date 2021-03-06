class Coach

  attr_accessor :passengers, :capacity

  def initialize
    @passengers = []
    @capacity = 50
  end

  def passenger_count
    @passengers.count
  end

  def board(passenger)
    raise 'Coach is full' if passenger_count == @capacity
    @passengers << passenger
  end

  def remove(passenger)
    @passengers.pop
  end

  def full?
    passenger_count == @capacity
  end

end
