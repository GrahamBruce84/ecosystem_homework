class Bears
  def initialize(bears)
    @bears = bears
    @stomach = []
  end

  def get_name
    @bears
  end

  def stomach_count
    @stomach.count()
  end

  def take_a_fish(river)
    eat_fish = river.pop()
    @stomach << eat_fish
  end

  def bear_roar
    return "ROAR"
  end

end