require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../rivers')
require_relative ('../fish')

class TestRivers < Minitest::Test

  def setup
    @river = River.new("Amazon")

    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")
  end

  def test_get_name
    assert_equal("Amazon", @river.get_name())
  end

  def test_adding_fish
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    assert_equal(2, @river.river_count())
  end


end