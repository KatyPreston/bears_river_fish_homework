class River

  attr_reader :name, :fish
  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def number_of_fish_in_river
    @fish.length
  end
  #
  def lose_fish(fish)
    @fish.delete(fish)
  end



end
