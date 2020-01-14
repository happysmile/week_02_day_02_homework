class River

  attr_reader :name

  #constructors

  def initialize(name)
    @name = name
    @fish = []
  end

  #methods

  def add_fish(fish)
    @fish.push(fish)
  end

  def fish_in_river()
    return @fish
  end

  def fish_in_river_count()
    return @fish.count()
  end

end
