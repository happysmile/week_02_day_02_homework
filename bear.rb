class Bear

  attr_reader :name

  #constructors

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  #methods

  def fish_in_stomach()
    return @stomach
  end

  def fish_in_stomach_count()
    return @stomach.count()
  end

# eats all the fish in one go
  def eat_fish_greedy(river)
    fish_in_river = river.fish_in_river()
    for fish in fish_in_river
      @stomach.push(fish)
    end
    river.clear_fish()
  end

# eats one fish at a time
  def eat_fish(river)
    fish_in_river = river.fish_in_river()
    first_fish_out = fish_in_river[0]
    @stomach.push(first_fish_out)
    river.delete_fish(first_fish_out)
  end

  def roar()
    return "Roarrrrrrr!"
  end

end
