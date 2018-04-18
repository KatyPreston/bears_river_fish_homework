require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class RiverTest < MiniTest::Test

  def setup
    fish = ["Salmon", "Goldfish", "Zebra"]
    @river = River.new("Chilko", fish)

  end

  def test_get_river_name
    assert_equal("Chilko", @river.name)
  end

  def test_count_fish_in_river
    assert_equal(3, @river.number_of_fish_in_river)
  end
  #
  def test_lose_fish_when_eaten
    @river.lose_fish("Salmon")
    @river.lose_fish("Zebra")
    assert_equal(1, @river.number_of_fish_in_river)
  end

end
