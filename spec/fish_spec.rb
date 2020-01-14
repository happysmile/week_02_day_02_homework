require('minitest/autorun')
require('minitest/reporters')

require_relative('../fish.rb')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class FishTest < Minitest::Test

  def setup
    @fish = Fish.new("Anne")
  end

  def test_fish_name
    assert_equal("Anne", @fish.name)
  end

end
