class Passenger

  attr_accessor :balance

  def initialize
    @balance = 20
  end

  def tap_in(station)
    raise 'Insufficent funds!' if @balance < 2
    @balance -= 2
    station.accept(self)
  end

  def tap_out(station)
    station.expel(self)
  end

end
