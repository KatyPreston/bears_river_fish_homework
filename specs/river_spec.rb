require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Chilko", ["Salmon", "Goldfish", "Zebra"])
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Zebra")

  end

  def test_get_river_name
    assert_equal("Chilko", @river.name)
  end

  def test_count_fish_in_river
    assert_equal(3, @river.number_of_fish_in_river)
  end

  def test_lose_fish_when_eaten
    @river.lose_fish(@fish1)
    @river.lose_fish(@fish2)
    assert_equal(1, @river.number_of_fish_in_river)
  end

end
