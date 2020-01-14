require('minitest/autorun')
require('minitest/reporters')

require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class BearTest < Minitest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly")
    @river = River.new("Clyde")
  end

  def test_bear_name()
    assert_equal("Yogi", @bear.name)
  end

  def test_empty_stomach()
    assert_equal(0, @bear.fish_in_stomach_count())
  end

  def test_eat_fish
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    assert_equal(2, @river.fish_in_river_count())
    assert_equal(0, @bear.fish_in_stomach_count())
    @bear.eat_fish(@river)
    assert_equal(0, @river.fish_in_river_count())
    assert_equal(2, @bear.fish_in_stomach_count())
  end

  def test_roar()
    assert_equal("Roarrrrrrr!", @bear.roar)
  end

end
