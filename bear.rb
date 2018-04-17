class Bear

  attr_reader :name, :stomach

  def initialize(name, stomach)
    @name = name
    @stomach = []
  end

  def fish_in_stomach()
    @stomach.length
  end

  def take_fish(fish)
    @stomach.push(fish)
  end

end
