class Game
  attr_reader :player_1, :player_2, :current_turn, :is_defending

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = player_1
    @is_defending = player_2
  end

  def attack(player)
    player.receive_attack
  end

  def change_turn
    if @current_turn == player_1
      @current_turn = player_2
      @is_defending = player_1
    else
      @current_turn = player_1
      @is_defending = player_2
    end
  end

  def lose?
    if player_1.lose
      player_1
    elsif player_2.lose
      player_2
    end
  end
end
