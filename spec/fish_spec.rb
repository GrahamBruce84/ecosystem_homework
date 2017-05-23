require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../fish')

class TestFish < Minitest::Test
  def setup()
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")
  end

  def test_get_name
    assert_equal("Nemo", @fish1.get_name())
  end
end