class River
  attr_reader :name, :fishes
  def initialize(name)
    @name=name
    @fishes=[]
  end

  def add_fish(fish)
    @fishes.push(fish)
  end

  def remove_fish
  return  @fishes.pop()
  end

  def fish_count
    return @fishes.length
  end

end
