class Train

  def initialize
    @coaches = []
  end

  def add(coach)
    @coaches << coach
  end

  def coaches_count
    @coaches.count
  end

  def enter(station)
    station.receive(self)
  end

  def leave(station)
    station.disembark(self)
  end

end
