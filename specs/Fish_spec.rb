require('minitest/autorun')
require('minitest/reporters')
require_relative('../Fish.rb')


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class FishTest < MiniTest::Test
  def test_fish_name()
    fish1=Fish.new("Harry")
    assert_equal("Harry", fish1.name)
  end

end
