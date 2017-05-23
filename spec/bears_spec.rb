require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../bears')
require_relative ('../rivers')

class TestBears < Minitest::Test
  def setup()
    @bears = Bears.new("Cindy")
    @river = River.new("Amazon")
  end

  def test_get_name
    assert_equal("Cindy", @bears.get_name())
  end

  def test_can_bear_eat_from_river
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @bears.take_a_fish(@river.get_river())
    assert_equal(1, @bears.stomach_count())
    assert_equal(1, @river.river_count())
  end

  def test_stomach_count
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @bears.take_a_fish(@river.get_river())
    assert_equal(1, @bears.stomach_count())
  end

  def test_bear_roar
    assert_equal("ROAR", @bears.bear_roar())
  end
end