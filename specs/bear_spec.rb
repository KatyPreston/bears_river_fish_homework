require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Barry", [])
    @fish1 = Fish.new("Cod")
    @fish2 = Fish.new("Spinner")
    @fish3 = Fish.new("Pink")
  end


  def test_get_name
    assert_equal("Barry", @bear.name)
  end

  def test_bear_starts_with_no_fish
    assert_equal(0, @bear.fish_in_stomach())
  end

  def test_take_fish_from_river
    @bear.take_fish(@fish1)
    assert_equal(1, @bear.fish_in_stomach())
  end

end
