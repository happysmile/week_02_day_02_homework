require('minitest/autorun')
require('minitest/reporters')

require_relative('../river.rb')
require_relative('../fish.rb')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class RiverTest < Minitest::Test

  def setup
    @river = River.new("Clyde")
    @fish1 = Fish.new("Anne")
    @fish2 = Fish.new("John")
  end

  def test_check_river_name()
    assert_equal("Clyde", @river.name)
  end

  def test_add_fish()
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    assert_equal(2, @river.fish_in_river_count())
  end

end
