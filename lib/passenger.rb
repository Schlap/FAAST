class Passenger

  attr_accessor :balance

  def initialize
    @balance = 10
  end

  def tap_in(station)
    @balance -= 2
    station.accept(self)
  end
end
