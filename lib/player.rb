require_relative "game"

class Player
  attr_reader :name, :hp

  DEFAULT_HP = 100
  DEFAULT_ATTACK = 10

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def receive_attack
    @hp -= DEFAULT_ATTACK
  end

  def lose
    return true if hp == 0
    false
  end
end
