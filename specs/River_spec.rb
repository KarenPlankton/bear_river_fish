require('minitest/autorun')
require('minitest/reporters')
require_relative('../River.rb')
require_relative('../Fish.rb')



Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class RiverTest < MiniTest::Test

  def setup
    @river1=River.new("Amazon")
  end

  def test_river_name()
    assert_equal("Amazon", @river1.name)
  end

  def test_has_many_fish()
  fish1=Fish.new("Harry")
  fish2=Fish.new("Larry")
  fish3=Fish.new("Garry")
   @river1.add_fish(fish1)
   @river1.add_fish(fish2)
   @river1.add_fish(fish3)
    assert_equal(3,@river1.fish_count)
  end

 def test_lose_fish
   fish1=Fish.new("Harry")
   fish2=Fish.new("Larry")
   fish3=Fish.new("Garry")
    @river1.add_fish(fish1)
    @river1.add_fish(fish2)
    @river1.add_fish(fish3)
   @river1.remove_fish
   assert_equal(2,@river1.fish_count)
 end

end
