class Station

attr_accessor :capacity

  def initialize
    @capacity = 8
    @passengers = []
  end

  def accept(passenger)
    @passengers << passenger
  end

  def passenger_count
    @passengers.count
  end
end
