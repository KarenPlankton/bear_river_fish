class Bear
  attr_reader :name,:type,:stomach
  def initialize(name,type)
    @name=name
    @type=type
    @stomach=[]
  end

  def take_fish_from_river(river)
  yummy_fish= river.remove_fish
  @stomach.push(yummy_fish)
  end









end
