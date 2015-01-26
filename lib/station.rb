class Station

attr_accessor :capacity

  def initialize
    @capacity = 8
    @passengers = []
    @trains = []
  end

  def accept(passenger)
    @passengers << passenger
  end

  def expel(passenger)
    @passengers.pop
  end

  def passenger_count
    @passengers.count
  end

  def receive(train)
    raise 'Station is full' if train_count == @capacity
    @trains << train
  end

  def train_count
    @trains.count
  end

  def full?
    train_count == @capacity
  end

end
