class Player

  attr_accessor :name, :lives

  def initialize(name)

    @lives = 6
    @name = name
    @points = 0
  end



def live_count
  return @lives
end


def take_lives
  @lives -= 1
end

def points_count
  return @points
end





end
