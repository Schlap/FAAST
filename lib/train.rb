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
end
