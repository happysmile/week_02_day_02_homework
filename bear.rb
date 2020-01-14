class Bear

  attr_reader :name

  #constructors

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  #methods

  def fish_in_stomach_count()
    return @stomach.count()
  end

  def eat_fish(river)
    fish_in_river = river.fish_in_river()
    for fish in fish_in_river
      @stomach.push(fish)
    end
    river.clear_fish()
  end

  def roar()
    return "Roarrrrrrr!"
  end

end
