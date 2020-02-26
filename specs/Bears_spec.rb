require('minitest/autorun')
require('minitest/reporters')
require_relative('../Fish.rb')
require_relative('../River.rb')
require_relative('../Bear.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class BearTest < MiniTest::Test

  def setup
    @bear1=Bear.new("Yogi","Grizly")
    @river1=River.new("Amazon")
    fish1=Fish.new("Harry")
    fish2=Fish.new("Larry")
    fish3=Fish.new("Garry")
     @river1.add_fish(fish1)
     @river1.add_fish(fish2)
     @river1.add_fish(fish3)
  end

 def test_name
   assert_equal("Yogi", @bear1.name)
 end

 def test_empty_stomach
   assert_equal(0,@bear1.stomach.length)
 end

 def test_eat_fish
   @bear1.take_fish_from_river(@river1)

   assert_equal(2,@river1.fish_count)
   assert_equal(1,@bear1.stomach.length)
 end

 def test_has_many_fish()
 fish1=Fish.new("Harry")
 fish2=Fish.new("Larry")
 fish3=Fish.new("Garry")
  @bear1.@stomach.push(fish1)
  @bear1.@stomach.push(fish2)
  @bear1.@stomach.push(fish3)
   assert_equal(3,@bear1.fish_eaten_count)
 end




end
