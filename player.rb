class Player

  @@turn = 1

  def self.turn
    @@turn
  end

  def initialize(num)
    @name = "Player #{num}"
    @score = 3
  end

  attr_accessor :name, :score

end
