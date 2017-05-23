class River
  def initialize(name)
    @name = name
    @river = []
  end

  def get_name()
    @name
  end

  def get_river
    @river
  end

  def add_fish(fish)
    @river << fish
  end

  def river_count()
    @river.count()
  end
end