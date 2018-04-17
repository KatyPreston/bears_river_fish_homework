require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("Salmon")
  end

  def test_get_name_of_fish
    assert_equal("Salmon", @fish.name)
  end

end
