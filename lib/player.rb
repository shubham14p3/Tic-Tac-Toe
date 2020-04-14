class Player
  attr_reader :id, :character, :score
  attr_writer :score

  def initialize(id, character)
    @id = id
    @score = 0
    @character = character
  end
end
